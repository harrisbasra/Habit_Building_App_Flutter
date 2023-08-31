import 'package:flutter/material.dart';
import 'package:test/RecurringTaskType.dart';
import 'package:test/SelectHabits.dart';

class StopWatchOverlay extends StatefulWidget {
  @override
  _StopWatchOverlayState createState() => _StopWatchOverlayState();
}

class _StopWatchOverlayState extends State<StopWatchOverlay> {
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop(); // Close the overlay
      },
      child: Material(
        color: Colors.transparent,
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 400, // Adjusted height to fit the new content
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Daily Goal', // Adding the title
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // First Column
                      Column(
                        children: [
                          SizedBox(height: 25,),
                          Text('03', style: TextStyle(
                            color: Color(0x7FA78295),
                            fontSize: 36,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                          Divider(color: Color(0xFFA78295),),
                          Text('04',style: TextStyle(
                            color: Color(0xFFA78295),
                            fontSize: 40,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                          Divider(color: Color(0xFFA78295),),

                          Text('03', style: TextStyle(
                            color: Color(0x7FA78295),
                            fontSize: 36,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                          SizedBox(height: 20,),
                          Text('hours',style: TextStyle(
                            color: Color(0xFF3F2E3E),
                            fontSize: 10,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      SizedBox(width: 10),
                      // Second Column
                      Text(
                        ':',
                        style: TextStyle(
                          color: Color(0xFFA78295),
                          fontSize: 40,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10),
                      // Third Column
                      Column(
                        children: [
                          SizedBox(height: 25,),

                          Text('59',style: TextStyle(
                            color: Color(0x7FA78295),
                            fontSize: 36,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                          Divider(color: Color(0xFFA78295),),

                          Text('00',style: TextStyle(
                            color: Color(0xFFA78295),
                            fontSize: 40,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                          Divider(color: Color(0xFFA78295),),

                          Text('59',style: TextStyle(
                            color: Color(0x7FA78295),
                            fontSize: 36,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                          SizedBox(height: 20,),
                          Text('minutes',style: TextStyle(
                            color: Color(0xFF3F2E3E),
                            fontSize: 10,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      SizedBox(width: 10),
                      // Fourth Column
                      Text(
                        ':',
                        style: TextStyle(
                          color: Color(0xFFA78295),
                          fontSize: 40,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10),
                      // Fifth Column
                      Column(
                        children: [
                          SizedBox(height: 25,),
                          Text('59',style: TextStyle(
                            color: Color(0x7FA78295),
                            fontSize: 36,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),

                          Divider(color: Color(0xFFA78295),),
                          Text('00',style: TextStyle(
                            color: Color(0xFFA78295),
                            fontSize: 40,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                          Divider(color: Color(0xFFA78295),),
                          Text('59',style: TextStyle(
                            color: Color(0x7FA78295),
                            fontSize: 36,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                          SizedBox(height: 20,),
                          Text('seconds',style: TextStyle(
                            color: Color(0xFF3F2E3E),
                            fontSize: 10,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Colors.black
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(15),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {
                              // Do something when the button is pressed
                            },
                            child: Text(
                              'Back',
                              style: TextStyle(
                                fontFamily: 'Jost',
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Colors.white,
                                Color.fromRGBO(188, 158, 167, 1),
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(15),
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SelectFrequency()),
                              // );
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontFamily: 'Jost',
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
