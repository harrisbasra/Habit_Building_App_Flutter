import 'package:flutter/material.dart';
import 'package:test/RecurringTaskType.dart';
import 'package:test/SelectHabits.dart';

class CategoryOverlay extends StatefulWidget {
  @override
  _CategoryOverlayState createState() => _CategoryOverlayState();
}

class _CategoryOverlayState extends State<CategoryOverlay> {

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
            height: 450, // Adjusted height to fit the new content
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Select a category",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/categories/1.png", height: 60, width: 60,),
                      Image.asset("assets/categories/2.png", height: 60, width: 60,),
                      Image.asset("assets/categories/3.png", height: 60, width: 60,),
                      Image.asset("assets/categories/4.png", height: 60, width: 60,),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/categories/5.png", height: 60, width: 60,),
                      Image.asset("assets/categories/6.png", height: 60, width: 60,),
                      Image.asset("assets/categories/7.png", height: 60, width: 60,),
                      Image.asset("assets/categories/8.png", height: 60, width: 60,),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/categories/9.png", height: 60, width: 60,),
                      Image.asset("assets/categories/10.png", height: 60, width: 60,),
                      Image.asset("assets/categories/11.png", height: 60, width: 60,),
                      Image.asset("assets/categories/12.png", height: 60, width: 60,),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/categories/13.png", height: 60, width: 60,),
                      Image.asset("assets/categories/14.png", height: 60, width: 60,),
                      Image.asset("assets/categories/15.png", height: 60, width: 60,),

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


