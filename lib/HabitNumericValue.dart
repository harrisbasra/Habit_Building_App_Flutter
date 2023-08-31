import 'package:flutter/material.dart';

import 'Home_Page.dart';

class HabitNumericValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(51, 29, 44, 1),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Center(
              child: Text(
                'Define your habit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Habit",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Jost',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 40,
              child: TextField(
                onTap: () {},
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontFamily: 'Jost', color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'e.g., call a friend',
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 40,
                  width: ((MediaQuery.of(context).size.width * 0.8) / 2) - 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: DropdownButton<String>(
                      hint: Text(
                        'Atleast',
                        style: TextStyle(
                        color: Color(0xFF3F2E3E),
                        fontSize: 12,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                      focusColor: Colors.white,
                      underline: Container(),
                      //value: ,
                      dropdownColor: Colors.white,
                      onChanged: (newValue) {},
                      icon: Icon(Icons.arrow_drop_down),
                      items: [
                        DropdownMenuItem(
                          value: 'Atleast',
                          child: Text(
                            'Atleast',
                            style: TextStyle(
                            color: Color(0xFF3F2E3E),
                            fontSize: 12,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),
                        ),
                        DropdownMenuItem(
                          value: 'Less Than',
                          child: Text(
                              'Less Than',
                            style: TextStyle(
                              color: Color(0xFF3F2E3E),
                              fontSize: 12,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Exactly',
                          child: Text(
                              'Exactly',
                            style: TextStyle(
                              color: Color(0xFF3F2E3E),
                              fontSize: 12,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Any Value',
                          child: Text('Any Value',
                            style: TextStyle(
                              color: Color(0xFF3F2E3E),
                              fontSize: 12,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 40,
                    child: TextField(
                      onTap: () {},
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontFamily: 'Jost', color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Goal',
                        hintStyle: TextStyle(fontWeight: FontWeight.w300),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 155,
                  child: TextField(
                    onTap: () {},
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontFamily: 'Jost', color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Unit(optional)',
                      hintStyle: TextStyle(fontWeight: FontWeight.w300),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "a day",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'e.g., Wash dishes. At least 2 times a day.',
                style: TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontSize: 15,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "Description",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Jost',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 40,
              child: TextField(
                onTap: () {},
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontFamily: 'Jost', color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'optional',
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
              ),
            ),
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
                          MaterialPageRoute(builder: (context) => HomePage()),
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
