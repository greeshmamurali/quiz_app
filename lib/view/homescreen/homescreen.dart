import 'package:flutter/material.dart';
import 'package:quiz_app/utils/animation_constants.dart';
import 'package:quiz_app/utils/colorConstants.dart';
import 'package:quiz_app/view/dummydb.dart';
import 'package:quiz_app/view/result/result.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with TickerProviderStateMixin {
  late final AnimationController _controller;
  CountDownController _countController = CountDownController();
  int pos = 0;

  int? selectedOption;
  int correct = 0;

  int? selectedAnswerIndex;

  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.BG_COLOR,
      appBar: AppBar(
        backgroundColor: Colorconstants.BG_COLOR,
        leading: Icon(Icons.cancel_outlined),
        title: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: Colorconstants.BORDER_COLOR)),
          child: LinearProgressIndicator(
            value: (pos+1)/10,
            backgroundColor: Colors.grey,
            minHeight: 5,
            color: Colorconstants.PROGRESS_BAR,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 15),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      color: Colorconstants.CONTAINER_COLOR,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(Dummydb.data[pos]['question'],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          color: Colorconstants.TEXT_COLOR,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                if (selectedAnswerIndex == null)
                  Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      child: Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 6,
                              color: Colorconstants.BG_COLOR,
                            )),
                        child: CircularCountDownTimer(
                          controller: _countController,
                          width: 50,
                          height: 50,
                          duration: 10,
                          fillColor: Colorconstants.CONTAINER_COLOR,
                          ringColor: Colors.red,
                          isReverse: true,
                          backgroundColor: Colorconstants.BG_COLOR,
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          onComplete: () {
                            selectedAnswerIndex = null;
                            if (pos < Dummydb.data.length - 1) {
                              setState(() {
                                pos++;
                                _countController.restart();
                              });
                            } else
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Result(
                                    rightAnserCount: correct,
                                  ),
                                ),
                              );
                          },
                        ),
                      )),
                if (selectedAnswerIndex == Dummydb.data[pos]['answerIndex'])
                  Lottie.asset(AnimationConstants.right_answer_animation)
              ],
            ),
          ),
          Column(
              children: List.generate(
            4,
            (optionIndex) {
              return InkWell(
                onTap: () {
                  if (selectedAnswerIndex == null)
                    selectedAnswerIndex = optionIndex;
                  setState(() {
                    if (optionIndex == Dummydb.data[pos]['answerIndex']) {
                      correct++;
                    }
                  });
                },
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: getColor(optionIndex),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Dummydb.data[pos]['options'][optionIndex],
                          style: TextStyle(
                              color: Colorconstants.TEXT_COLOR,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        getIcon(optionIndex)
                      ],
                    )),
              );
            },
          )),
          SizedBox(
            height: 5,
          ),
          selectedAnswerIndex == null
              ? SizedBox()
              : InkWell(
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
                          builder: (context) => Result(
                            rightAnserCount: correct,
                          ),
                        ),
                      );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colorconstants.NEXT,
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
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

  Icon getIcon(int currentOptionIndex) {
    if (selectedAnswerIndex != null &&
        currentOptionIndex == Dummydb.data[pos]['answerIndex']) {
      return Icon(
        Icons.check_circle,
        color: Colorconstants.rightAnswerColor,
      );
    }

    if (selectedAnswerIndex == currentOptionIndex) {
      if (currentOptionIndex == Dummydb.data[pos]['answerIndex']) {
        return Icon(
          Icons.check_circle,
          color: Colorconstants.rightAnswerColor,
        );
      } else {
        return Icon(
          Icons.cancel,
          color: Colorconstants.wrongAnswerColor,
        );
      }
    }
    return Icon(
      Icons.radio_button_off,
      color: Colorconstants.TEXT_COLOR,
    );
  }
}
