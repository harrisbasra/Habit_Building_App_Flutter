import 'package:flutter/material.dart';
import 'package:test/Categories_Page1.dart';
import 'package:test/Home_Page.dart';

class profile_creation extends StatefulWidget {
  @override
  _Profile_CreationState createState() => _Profile_CreationState();
}

class _Profile_CreationState extends State<profile_creation> {
  bool _isChecked = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(51, 29, 44, 0.9),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 1, child: SizedBox(height: 20)),
            Image.asset("assets/images/img.png", width: 100, height: 100,),
            SizedBox(height: 50),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(" Profile",
                style: TextStyle(
                  fontFamily: 'Jost',
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(" Nickname",
                style: TextStyle(
                  fontFamily: 'Jost',
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 40,
              child: TextField(
                onTap: () {},
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                style: TextStyle(fontFamily: 'Jost',color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Wähle deinen Nickname',
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
            Expanded(flex:2, child: SizedBox(height: 30)),
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
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'Fortfahren',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),


            SizedBox(height: 40),



          ],
        ),
      ),
    );
  }
}
