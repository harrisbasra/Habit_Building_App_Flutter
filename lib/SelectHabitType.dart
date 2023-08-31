import 'package:flutter/material.dart';

import 'HabitNumericValue.dart';
import 'HabitTimeValue.dart';
import 'HabitYESNO.dart';

class SelectHabitType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(51, 29, 44, 1), // RGB color (51, 29, 44)
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Center(
              child: Text(
                'Select a category for your habit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white,Colors.white,Color.fromRGBO(188, 158, 167,1)],
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  minimumSize: Size(double.infinity, 45),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HabitYESNO()),
                  );
                },
                child: Text(
                  'With a Yes or No',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Center(
              child: Text("If you just want to record whether you succeed with the activity or not",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Jost',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white,Colors.white,Color.fromRGBO(188, 158, 167,1)],
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  minimumSize: Size(double.infinity, 45),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HabitNumericValue()),
                  );
                },
                child: Text(
                  'With a Numeric value',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Center(
              child: Text("If you want to establish a value as a daily goal or limit for the habit",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Jost',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white,Colors.white,Color.fromRGBO(188, 158, 167,1)],
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  minimumSize: Size(double.infinity, 45),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HabitTimeValue()),
                  );
                },
                child: Text(
                  'With a Timer',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Center(
              child: Text("If you want to establish a time value as a daily goal or limit for the habit",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Jost',
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(child: SizedBox(height: 10)),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 150,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0xFFeddfd0),
                    )
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(15),
                    primary: Colors.transparent, // RGB color (237, 223, 208)
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
          ],
        ),
      ),
    );
  }
}

class BoxWithIconAndText extends StatelessWidget {
  final String icon;
  final String text;
  final bool isLeft;

  const BoxWithIconAndText({
    Key? key,
    required this.icon,
    required this.text,
    required this.isLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (isLeft)
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(51, 29, 44, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                width: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(icon, height: 10, width: 10,),
                ),
              )
            else
              Text(text, style: TextStyle(fontSize: 12)),
            if (isLeft)
              Text(text, style: TextStyle(fontSize: 12))
            else
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(51, 29, 44, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                width: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(icon, height: 10, width: 10,),
                ),
              )
          ],
        ),
      ),
    );
  }
}
