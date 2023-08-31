import 'package:flutter/material.dart';
import 'package:test/AR_Overlay.dart';
import 'package:test/CalenderOverlay.dart';
import 'package:test/Categories_Page1.dart';
import 'package:test/CategoryOverlay.dart';
import 'package:test/NotesOverlay.dart';
import 'package:test/PriorityOverlay.dart';

class TaskPackDetails extends StatefulWidget {
  @override
  _TaskPackDetailsState createState() => _TaskPackDetailsState();
}

class _TaskPackDetailsState extends State<TaskPackDetails> {

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
                'New task',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 40,
              child: TextField(
                onTap: () {},
                keyboardType: TextInputType.emailAddress,

                style: TextStyle(fontFamily: 'Jost',color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'e.g., call a friend',
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
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
            SizedBox(height: 50),
            // Add Rows here
            Row(
              children: [
                Image.asset("assets/icons/categs.png", height: 20, width: 20, ),
                SizedBox(width: 10),
                Text(
                  'Category', style: TextStyle(
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
                        return CategoryOverlay(); // Use your custom overlay widget
                      },
                    );
                  },
                  child: Text('Select',
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
                Image.asset("assets/icons/calender.png", height: 20, width: 20, ),
                SizedBox(width: 10),
                Text(
                  'Date',
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
                        return CalenderOverlay(); // Use your custom overlay widget
                      },
                    );
                  },
                  child: Text('Today',
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
                Image.asset("assets/images/bell.png", height: 20, width: 20, ),
                SizedBox(width: 10),
                Text('Time & Reminders',
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
                  child: Text('Add', style: TextStyle(
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
                Text(
                  'Priority',
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
                        return PriorityOverlay(); // Use your custom overlay widget
                      },
                    );
                  },
                  child: Text('Default',
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
                Image.asset("assets/icons/note.png", height: 20, width: 20, ),
                SizedBox(width: 10),
                Text('Note',
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
                        return NotesOverlay(); // Use your custom overlay widget
                      },
                    );
                  },
                  child: Text('Add', style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w400,
                  ),),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Image.asset("assets/icons/pTask.png", height: 20, width: 20, ),
                SizedBox(width: 10),
                Text('Pending Task',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w400,
                  ),),
                Expanded(child: SizedBox(width: 10,)),
                Checkbox(
                  value: true,
                  activeColor: Colors.white,
                  checkColor: Colors.black,
                  onChanged: (value) {

                  },
                ),
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
