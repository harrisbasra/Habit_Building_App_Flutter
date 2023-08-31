import 'package:flutter/material.dart';
import 'package:test/AR_Overlay.dart';

class ConfirmRuccur extends StatefulWidget {
  @override
  _ConfirmRuccurState createState() => _ConfirmRuccurState();
}

class _ConfirmRuccurState extends State<ConfirmRuccur> {

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
                'When do you want to do it?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 50),
            // Add Rows here
            Row(
              children: [
                Image.asset("assets/icons/calender.png", height: 20, width: 20, ),
                SizedBox(width: 10),
                Text(
                  'Start Date', style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),),
                Spacer(),
                Text('Today',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Image.asset("assets/icons/calender.png", height: 20, width: 20, ),
                SizedBox(width: 10),
                Text(
                  'End Date', style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),),
                Spacer(),
                Switch(
                  value: false,
                  activeColor:  Color.fromRGBO(51, 29, 44, 1),
                  onChanged: (value) {

                  }
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Image.asset("assets/images/bell.png", height: 20, width: 20, ),
                SizedBox(width: 10),
                Text(
                  'Alarms & Reminders',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),),
                Spacer(),
                InkWell(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AROverlay(); // Use your custom overlay widget
                      },
                    );
                  },
                  child: Text('Add',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w400,
                  ),),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Image.asset("assets/icons/flag.png", height: 20, width: 20, ),
                SizedBox(width: 10),
                Text('Priority',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),),
                Spacer(),
                Text('Default', style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),),
              ],
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
    );
  }
}
