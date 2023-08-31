import 'package:flutter/material.dart';
import 'package:test/Categories_Page1.dart';
import 'package:test/Home_Page.dart';
import 'package:test/Sign_Up.dart';

class log_in extends StatefulWidget {
  @override
  _Landing_PageState createState() => _Landing_PageState();
}


class _Landing_PageState extends State<log_in> {
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
            Expanded(child: SizedBox(height: 20)),
            Image.asset("assets/images/img.png", width: 100, height: 100,),
            SizedBox(height: 50),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(" Login",
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
              child: Text(" Email",
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
                  hintText: 'example@email.com',
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
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(" Password",
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
                controller: passwordController,
                style: TextStyle(fontFamily: 'Jost',color: Colors.black),
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: '*******',
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

            SizedBox(height: 5),
            Row(
              children: [

                Checkbox(value: _isChecked, onChanged: (bool){
                    _isChecked = true;
                },
                  activeColor: Colors.white,
                 checkColor: Colors.black,
                ),
                Text(
                  "Keep me signed in",
                  style: TextStyle(fontFamily: 'Jost',color: Colors.white,), // Set text color to white
                ),
                Spacer(),
                Expanded(child: SizedBox(width: 20)),
                Text("Passwort vergessen",  style: TextStyle(
                  fontFamily: 'Jost',
                  color: Colors.white,
                ),
                ),
              ],
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
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),


            SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: Divider(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => QuranLandPage()),
                      // );
                    },
                      child: Text("or", style: TextStyle(fontFamily: 'Jost',color: Colors.white, ),)),
                ),
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
            SizedBox(height: 50),
            InkWell(
                onTap: (){

                },
                child: Image.asset(
                  "assets/images/google.png",
                  width: 30,
                  height: 30,)
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sign_up()),
                    );
                  },
                  child: Text(
                    "New Here? ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Jost', color: Colors.white, fontSize: 16),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sign_up()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,

                    style: TextStyle(fontFamily: 'Jost', color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(child: SizedBox(height: 20)),

          ],
        ),
      ),
    );
  }
}
