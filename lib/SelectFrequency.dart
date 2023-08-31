import 'package:flutter/material.dart';
import 'package:test/pages/ConfirmRuccur.dart';

class SelectFrequency extends StatefulWidget {
  @override
  _SelectFrequencyState createState() => _SelectFrequencyState();
}

class _SelectFrequencyState extends State<SelectFrequency> {
  int _selectedValue = 0; // Initially selected value
  List<bool> isSelectedList = List.generate(32, (index) => false);
  List<bool> _selectedDays = List.generate(7, (index) => false);

  Widget _buildSubMenu(int radioIndex) {
    if (_selectedValue == radioIndex) {
      if (radioIndex == 1) {
        return
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Row(
                        children: [
                          Checkbox(
                            value: _selectedDays[i],
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            onChanged: (value) {
                              setState(() {
                                _selectedDays[i] = value!;
                              });
                            },
                          ),
                          Text(
                            _getDayName(i),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                Row(
                  children: [
                    for (int i = 3; i < 6; i++)
                      Row(
                        children: [
                          Checkbox(
                            value: _selectedDays[i],
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            onChanged: (value) {
                              setState(() {
                                _selectedDays[i] = value!;
                              });
                            },
                          ),
                          Text(
                            _getDayName(i),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _selectedDays[6],
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              _selectedDays[6] = value!;
                            });
                          },
                        ),
                        Text(
                          _getDayName(6),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );

      } else
        if (radioIndex == 2) {
        return Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Column(
            children: [
              for (int i = 0; i < 31; i += 10)
                Row(
                  children: [
                    for (int j = i + 1; j <= i + 10 && j <= 32; j++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelectedList[j - 1] = !isSelectedList[j - 1];
                          });
                        },
                        child: Container(
                          width: j == 32 ? 80 : 20,
                          height: 20,
                          margin: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: j == 32
                                ? BorderRadius.circular(5)
                                : BorderRadius.circular(100),
                            color: isSelectedList[j - 1]
                                ? Color.fromRGBO(167, 130, 149, 1)
                                : Colors.transparent,
                            border: Border.all(
                              color: Color.fromRGBO(167, 130, 149, 1),
                              width: isSelectedList[j - 1] ? 2 : 1,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                          child: Center(
                            child: Text(
                              j == 32 ? 'Last Day of Month' : '$j',
                              style: TextStyle(
                                color:
                                isSelectedList[j - 1] ? Colors.black : Colors.white,
                                fontSize: 10,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
            ],
          ),
        );
        } else
          if (radioIndex == 3) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 30,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: DropdownButton<String>(
                      value: "Monday", // Set the initial value here
                      items: [
                        DropdownMenuItem<String>(
                          value: "Monday",
                          child: Text("Monday",
                            style: TextStyle(
                            color: Color(0xFF3F2E3E),
                            fontSize: 10,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                        ),
                        DropdownMenuItem<String>(
                          value: "Tuesday",
                          child: Text("Tuesday",
                            style: TextStyle(
                              color: Color(0xFF3F2E3E),
                              fontSize: 10,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),),
                        ),
                        DropdownMenuItem<String>(
                          value: "Wednesday",
                          child: Text("Wednesday",
                            style: TextStyle(
                              color: Color(0xFF3F2E3E),
                              fontSize: 10,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),),
                        ),
                        DropdownMenuItem<String>(
                          value: "Thursday",
                          child: Text("Thursday",
                            style: TextStyle(
                              color: Color(0xFF3F2E3E),
                              fontSize: 10,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),),
                        ),
                        DropdownMenuItem<String>(
                          value: "Friday",
                          child: Text("Friday",
                            style: TextStyle(
                              color: Color(0xFF3F2E3E),
                              fontSize: 10,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),),
                        ),
                        DropdownMenuItem<String>(
                          value: "Saturday",
                          child: Text("Saturday",
                            style: TextStyle(
                              color: Color(0xFF3F2E3E),
                              fontSize: 10,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),),
                        ),
                        DropdownMenuItem<String>(
                          value: "Sunday",
                          child: Text("Sunday",
                            style: TextStyle(
                              color: Color(0xFF3F2E3E),
                              fontSize: 10,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),),
                        ),
                      ],
                      onChanged: (String? value) {
                        // Handle the value change here
                      },
                      iconSize: 24, // Adjust the icon size as needed
                      isExpanded: false, // Prevent the dropdown from taking up all available space
                      underline: Container(), // Remove the underline

                    ),
                  ),
                ),

                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: DropdownButton<String>(
                      value: "1",
                      underline: Container(),// You can set the initial value here
                      items: List<DropdownMenuItem<String>>.generate(31, (int index) {
                        return DropdownMenuItem<String>(
                          value: (index + 1).toString(),
                          child: Text(
                            (index + 1).toString(),
                            style: TextStyle(
                              color: Color(0xFF3F2E3E),
                              fontSize: 10,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }),
                      onChanged: (String? value) {
                        // Handle the value change here
                      },
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: () {
                    // Implement the button functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, // Make the primary color transparent
                    onPrimary: Colors.black, // Text color when button is not pressed
                    onSurface: Colors.black, // Text color when button is pressed
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Circular border of 10
                      side: BorderSide(color: Colors.white), // White border
                    ),
                  ),
                  child: Text('Delete',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w400,
                  ),),
                ),

              ],
            ),

          ],
        );
      } else
            if (radioIndex == 4) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Set the desired height
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    "days per", style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(width: 10,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color to white
                      borderRadius: BorderRadius.circular(8.0), // You can adjust the border radius as needed
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: DropdownButton<String>(
                      value: "week",
                      underline: Container(),// You can set the initial value here
                      items: [
                        DropdownMenuItem<String>(
                          value: "week",
                          child: Text("Week"),
                        ),
                        DropdownMenuItem<String>(
                          value: "month",
                          child: Text("Month"),
                        ),
                        DropdownMenuItem<String>(
                          value: "year",
                          child: Text("Year"),
                        ),
                      ],
                      onChanged: (String? value) {
                        // Handle the value change here
                      },
                    ),
                  )

                ],
              );
            } else
                if (radioIndex == 5) {
                    return Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Row(
                                  children: [
                                    Text(
                                      "Every", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Jost',
                                      fontWeight: FontWeight.w400,
                                    ),),
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
                                            borderSide: BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5.0),
                                            borderSide: BorderSide(color: Colors.white),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Set the desired height
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("days",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Jost',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10), // Add some spacing between rows
                              Row(
                                children: [
                                  Text(
                                    "Alternate Days",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Jost',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Spacer(), // Push toggle switch to the right
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Switch(
                                      value: true,
                                      onChanged: (bool newValue) {

                                      },
                                      activeColor: Colors.white, // Set thumb color
                                    ),
                                  ),
                                ],
                              ),
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color.fromRGBO(51, 29, 44, 1),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Center(
              child: Text(
                'How often do you want to do it?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedValue = _selectedValue == 0 ? 0 : 0;
                  });
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 0,
                          activeColor: Colors.white,
                          groupValue: _selectedValue,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Everyday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    _buildSubMenu(0),
                  ],
                ),
              ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedValue = _selectedValue == 1 ? 0 : 1;
                });
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        activeColor: Colors.white,
                        groupValue: _selectedValue,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Some specific days of Week',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  _buildSubMenu(1),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedValue = _selectedValue == 2 ? 0 : 2;
                });
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        activeColor: Colors.white,
                        groupValue: _selectedValue,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Some specific days of month',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  _buildSubMenu(2),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedValue = _selectedValue == 3 ? 0 : 3;
                });
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 3,
                        activeColor: Colors.white,
                        groupValue: _selectedValue,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Some specific days of year',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  _buildSubMenu(3),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedValue = _selectedValue == 4 ? 0 : 4;
                });
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 4,
                        activeColor: Colors.white,
                        groupValue: _selectedValue,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Some specific days per period',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  _buildSubMenu(4),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedValue = _selectedValue == 5 ? 0 : 5;
                });
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 5,
                        activeColor: Colors.white,
                        groupValue: _selectedValue,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Repeat',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  _buildSubMenu(5),
                ],
              ),
            ),
            SizedBox(height: 30),
            Expanded(child: SizedBox(height: 10)),
            Row(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 150,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xFFeddfd0),
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        primary: Colors.transparent,
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
                          color: Color(0xFFeddfd0),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 150,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ConfirmRuccur()),
                        );
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
    );
  }
}