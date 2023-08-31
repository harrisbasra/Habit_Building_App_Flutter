import 'package:flutter/material.dart';
import 'package:test/RecurringTaskType.dart';
import 'package:test/SelectHabits.dart';

class AROverlay extends StatefulWidget {
  @override
  _AROverlayState createState() => _AROverlayState();
}

class _AROverlayState extends State<AROverlay> {
  int _selectedValue = 0; // Track the selected radio button value
  List<bool> _selectedDays = List.generate(7, (index) => false);

  Widget _buildSubMenu(int radioIndex) {
    if (_selectedValue == radioIndex) {
      if (radioIndex == 1) {
        return
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            child: Checkbox(
                              value: _selectedDays[i],
                              activeColor: Colors.white,
                              checkColor: Colors.black,
                              onChanged: (value) {
                                setState(() {
                                  _selectedDays[i] = value!;
                                });
                              },
                          ),),
                          SizedBox(width: 10,),
                          Text(
                            _getDayName(i),
                            style: TextStyle(
                              color: Color(0xFF1A0F16),
                              fontSize: 8,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 10,),
                        ],
                      ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    for (int i = 4; i < 7; i++)
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            child: Checkbox(
                              value: _selectedDays[i],
                              activeColor: Colors.white,
                              checkColor: Colors.black,
                              onChanged: (value) {
                                setState(() {
                                  _selectedDays[i] = value!;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            _getDayName(i),
                            style: TextStyle(
                              color: Color(0xFF1A0F16),
                              fontSize: 8,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 10,),
                        ],
                      ),
                  ],
                ),

              ],
            ),
          );

      } else
      if (radioIndex == 2) {
        return Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        SizedBox(
                          width: 40,
                          child: TextField(
                            onTap: () {},
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontFamily: 'Jost',color: Colors.black),
                            maxLength: 2,
                            decoration: InputDecoration(
                              counterText: '',
                              filled: true,
                              fillColor: Colors.white, // Background color
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Set the desired height
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("days before",
                          style: TextStyle(
                            color: Color(0xFF331D2C),
                            fontSize: 14,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40), // Add some spacing between rows
                ],
              ),
            ),
          ],
        );
      } else
      {
        return SizedBox(); // No sub-menu for other radio buttons
      }
    }
    else {
      return SizedBox();
    }
  }
  String _getDayName(int dayIndex) {
    List<String> days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
    return days[dayIndex];
  }

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
            height: 550, // Adjusted height to fit the new content
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // New Reminder Text
                  Text(
                    "New Reminder",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Time Text
                  Text(
                    "12:00 PM",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 5),
                  // Reminder Time Text
                  Text(
                    "Reminder Time",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Reminder type",
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  SizedBox(height: 15,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 90,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            border: Border.all(
                              color: Color.fromRGBO(239, 225, 209,1),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.notifications_off), // Crossed-bell icon
                              Text(
                                "Don't remind",
                                style: TextStyle(
                                color: Color(0xFF1A0F16),
                                fontSize: 10,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400,
                              ),),
                            ],
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 80,
                          color: Color.fromRGBO(239, 225, 209,1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.notifications), // Bell icon
                              Text(
                                "Notification",
                                style: TextStyle(
                                  color: Color(0xFF1A0F16),
                                  fontSize: 10,
                                  fontFamily: 'Jost',
                                  fontWeight: FontWeight.w400,
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            border: Border.all(
                              color: Color.fromRGBO(239, 225, 209,1),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.access_alarm), // Clock icon
                              Text(
                                  "Alarm",
                                style: TextStyle(
                                  color: Color(0xFF1A0F16),
                                  fontSize: 10,
                                  fontFamily: 'Jost',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Divider(),
                  // Reminder Schedule Text
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                        "Reminder Schedule",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                        activeColor: Color.fromRGBO(167, 130, 149, 1),
                      ),
                      Text(
                        "Everyday",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),                  ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                        activeColor: Color.fromRGBO(167, 130, 149, 1),

                      ),
                      Text(
                        "Specific days of week",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  _buildSubMenu(1),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                        activeColor: Color.fromRGBO(167, 130, 149, 1),
                      ),
                      Text(
                        "Days before",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  _buildSubMenu(2),
                  // Elevated buttons
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


