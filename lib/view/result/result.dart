import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colorConstants.dart';
import 'package:quiz_app/view/dummydb.dart';
import 'package:quiz_app/view/homescreen/homescreen.dart';

class Result extends StatefulWidget {
  int rightAnserCount;
  Result({required this.rightAnserCount, super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  int starCount = 0;
  percentage() {
    var percent = (widget.rightAnserCount / Dummydb.data.length) *100;
    print(percent);
 
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
    percentage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          Text(
            '${widget.rightAnserCount}/13',
            style: TextStyle(color: Colorconstants.STAR),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Homescreen(),
                  ));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(
                vertical: 4,
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 14,
                      child: Icon(
                        Icons.settings_backup_restore,
                        color: Colors.white,
                        size: 16,
                      )),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Retry',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
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
