import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colorConstants.dart';
import 'package:quiz_app/view/discover/discover.dart';
import 'package:quiz_app/view/dummydb.dart';
import 'package:quiz_app/view/homescreen/homescreen.dart';

class Result extends StatefulWidget {
  int rightAnserCount;
  int selectedindex;
  Result({
    required this.selectedindex,
    required this.rightAnserCount, super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  int starCount = 0;
  List questions=[];
  
  percentage() {
    var percent = (widget.rightAnserCount / questions.length) * 100;
    

    if (percent >= 80) {
      starCount = 3;
    } else if (percent >= 50) {
      starCount = 2;
    } else if (percent >= 30) {
      starCount = 1;
    }
  }

  @override
  void initState() {
    questions=Dummydb.data[widget.selectedindex]['questions'];
    percentage();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.RESULT_BG,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(
              3,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: 15, right: 15, bottom: index == 1 ? 30 : 0),
                  child: Icon(
                    Icons.star,
                    color:
                        starCount > index ? Colorconstants.STAR : Colors.grey,
                    size: index == 1 ? 80 : 50,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Congragulations',
            style: TextStyle(
                color: Colorconstants.STAR,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Your Score',
            style: TextStyle(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            '${widget.rightAnserCount}/10',
            style: TextStyle(
                color: Colorconstants.STAR, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Discover(),
                  ));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              padding: EdgeInsets.symmetric(
                vertical: 5,
              ),
              decoration: BoxDecoration(
                  color: Colorconstants.RETRY,
                  borderRadius: BorderRadius.circular(9)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 12,
                      child: Icon(
                        Icons.settings_backup_restore,
                        color: Colors.white,
                        size: 14,
                      )),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Retry',
                    style: TextStyle(
                        color: Colorconstants.TEXT_COLOR,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
