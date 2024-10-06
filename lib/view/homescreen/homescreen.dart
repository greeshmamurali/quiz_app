import 'package:flutter/material.dart';
import 'package:quiz_app/view/colorConstants.dart';
import 'package:quiz_app/view/dummydb.dart';
import 'package:quiz_app/view/result/result.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int pos = 0;
  bool correct = false;
  int? selectedOption;
 

  int? selectedAnswerIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.BG_COLOR,
      appBar: AppBar(
        backgroundColor: Colorconstants.BG_COLOR,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('${pos + 1} / ${Dummydb.data.length}',
                style: TextStyle(color: Colorconstants.TEXT_COLOR)),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .6,
              decoration: BoxDecoration(
                  color: Colorconstants.CONTAINER_COLOR,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  Dummydb.data[pos]['question'],
                  style:
                      TextStyle(color: Colorconstants.TEXT_COLOR, fontSize: 20),
                ),
              ),
            ),
          ),
          Column(
              children: List.generate(
            4,
            (optionIndex) {
         
              return InkWell(
                onTap: () {
                  if (selectedAnswerIndex==null)
                  selectedAnswerIndex = optionIndex;
                  setState(() {});
                },
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: getColor(optionIndex),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Dummydb.data[pos]['options'][optionIndex],
                          style: TextStyle(
                              color: Colorconstants.TEXT_COLOR, fontSize: 16),
                        ),
                        Icon(
                          Icons.radio_button_off,
                          color: Colorconstants.TEXT_COLOR,
                        )
                      ],
                    )),
              );
            },
          )),
          SizedBox(
            height: 5,
          ),

          selectedAnswerIndex==null?SizedBox():
          InkWell(
            onTap: () {
              selectedAnswerIndex = null;
              if (pos < Dummydb.data.length - 1) {
                setState(() {
                  pos++;
                });
              } else
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result(rightAnserCount: 8,),
                  ),
                );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xff664343), borderRadius: BorderRadius.circular(6)),
              child: Center(
                child: Text(
                  'NEXT',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Color getColor(int currentOptionIndex) {
    if (selectedAnswerIndex != null &&
        currentOptionIndex == Dummydb.data[pos]['answerIndex']) {
      return Colorconstants.rightAnswerColor;
    }

    if (selectedAnswerIndex == currentOptionIndex) {
      if (selectedAnswerIndex == Dummydb.data[pos]['answerIndex']) {
        return Colorconstants.rightAnswerColor;
      } else {
        return Colorconstants.wrongAnswerColor;
      }
    } else {
      return Colorconstants.BORDER_COLOR;
    }
  }
}
