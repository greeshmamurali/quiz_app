import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colorConstants.dart';
import 'package:quiz_app/utils/imageConstants.dart';
import 'package:quiz_app/view/dummydb.dart';
import 'package:quiz_app/view/homescreen/homescreen.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colorconstants.BG_COLOR,
        
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Jewel',
              style: TextStyle(
                  color: Colorconstants.DISCOVER_TEXT,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Text(
              'Lets make this day productive',
              style: TextStyle(
                  color: Colorconstants.DISCOVER_TEXT,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/2169434/pexels-photo-2169434.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's play",
              style: TextStyle(
                  color: Colorconstants.DISCOVER_TEXT,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: Dummydb.data.length,
                padding: EdgeInsets.only(top: 20),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    crossAxisSpacing: 23,
                    mainAxisSpacing: 35,
                    mainAxisExtent: 160),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Homescreen(selectedIndex: index,),
                          ));
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(left: 15, bottom: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colorconstants.CONTAINER_COLOR),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Dummydb.data[index]['name'],
                                  style: TextStyle(
                                      color: Colorconstants.TEXT_COLOR,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  Dummydb.data[index]['qtns'],
                                  style: TextStyle(
                                      color: Colorconstants.TEXT_COLOR,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            )),
                        Positioned(
                            left: -20,
                            right: 0,
                            top: -20,
                            child: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(
                                Dummydb.data[index]['img'],
                                height: 100,
                                width: 100,
                              ),
                            )),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
