import 'package:flutter/material.dart';

import 'SelectHabitType.dart';
import 'SelectRecurringType.dart';

class RecurringTaskType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 900,
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
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoxWithIconAndText(
                    icon: "assets/icons/quithabit.png",
                    text: 'Quit a bad Habit',
                    isLeft: true,
                  ),
                  SizedBox(width: 20),
                  BoxWithIconAndText(
                    icon: "assets/icons/art.png",
                    text: 'Art',
                    isLeft: false,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoxWithIconAndText(
                    icon: "assets/icons/clipboard.png",
                    text: 'Task',
                    isLeft: true,
                  ),
                  SizedBox(width: 20),
                  BoxWithIconAndText(
                    icon: "assets/icons/meditation.png",
                    text: 'Meditation',
                    isLeft: false,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoxWithIconAndText(
                    icon: "assets/icons/book.png",
                    text: 'Study',
                    isLeft: true,
                  ),
                  SizedBox(width: 20),
                  BoxWithIconAndText(
                    icon: "assets/icons/sports.png",
                    text: 'Sports',
                    isLeft: false,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoxWithIconAndText(
                    icon: "assets/icons/entertainment.png",
                    text: 'Entertainment',
                    isLeft: true,
                  ),
                  SizedBox(width: 20),
                  BoxWithIconAndText(
                    icon: "assets/icons/social.png",
                    text: 'Socials',
                    isLeft: false,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoxWithIconAndText(
                    icon: "assets/icons/plus.png",
                    text: 'Health',
                    isLeft: true,
                  ),
                  SizedBox(width: 20),
                  BoxWithIconAndText(
                    icon: "assets/icons/work.png",
                    text: 'Work',
                    isLeft: false,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoxWithIconAndText(
                    icon: "assets/icons/dollar.png",
                    text: 'Finance',
                    isLeft: true,
                  ),
                  SizedBox(width: 20),
                  BoxWithIconAndText(
                    icon: "assets/icons/food.png",
                    text: 'Nutrition',
                    isLeft: false,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoxWithIconAndText(
                    icon: "assets/icons/home.png",
                    text: 'Home',
                    isLeft: true,
                  ),
                  SizedBox(width: 20),
                  BoxWithIconAndText(
                    icon: "assets/icons/picnic.png",
                    text: 'Outdoor',
                    isLeft: false,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(51, 29, 44, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/icons/categs.png", height: 10, width: 10,),
                            ),
                          ),
                          Text("Other", style: TextStyle(fontSize: 12))
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox(width: 10,),)
                ],
              ),
            ],
          ),
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
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SelectRecurringType()),
          );
        },
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
      ),
    );
  }
}
