import 'package:flutter/material.dart';
import 'package:test/SelectFrequency.dart';

class RecurringYESNO extends StatelessWidget {
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
            Text("Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Jost',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5,),
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
            SizedBox(height: 30),
            Text("Habit",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Jost',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 40,
              child: TextField(
                onTap: () {},
                keyboardType: TextInputType.emailAddress,

                style: TextStyle(fontFamily: 'Jost',color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'optional',
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
                SizedBox(width: 15,),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 150,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // border: Border.all(
                      //   color: Color(0xFFeddfd0),
                      // )
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white,Colors.white,Color.fromRGBO(188, 158, 167,1)],
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        primary: Colors.transparent ,// RGB color (237, 223, 208)
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SelectFrequency()),
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
