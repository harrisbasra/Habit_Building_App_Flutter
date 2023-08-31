import 'package:flutter/material.dart';
import 'package:test/Categories_Page1.dart';

import 'ChatPage.dart';
import 'FilterOverlay.dart';
import 'New_Add_Overlay.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Color.fromRGBO(51, 29, 44, 1),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                height: 50,
                color: Color.fromRGBO(51, 29, 44, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20,),
                    Image.asset("assets/images/menu.png", height: 20, width: 20,),
                    SizedBox(width: 15,),
                    Text("Today",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w400,
                    ),),
                    Expanded(child: SizedBox(width: 10)),
                    Text("5 August 2023, Saturday",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Image.asset("assets/images/bell.png", height: 20, width: 20,),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 31,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, ),
                      child: Container(
                        //width: 40,
                        height: index == 15 ? 100 : 50,
                        color: index == 15 ? Colors.transparent : Colors.transparent,
                        child: Container(
                          width: 40,

                          decoration: BoxDecoration(
                            color:  Color.fromRGBO(58,46,65, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              (index + 1).toString(),
                              style: TextStyle(
                                color: index == 15 ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: (){
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return FilterOverlay(); // Use your custom overlay widget
                            },
                          );
                        },
                          child: Image.asset("assets/images/filter.png",
                            width: 10,
                            height: 10,)
                      ),
                    ),
                    hintText: "Search Habit",
                    fillColor: Colors.white, // Background color
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Set the desired height
                  ),
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(239, 225, 209, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(51, 29, 44, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 40,
                                width: 40,
                                child: Icon(Icons.not_interested, color: Colors.white,),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Do not drink Alcohol",
                                  style: TextStyle(
                                    color: Color(0xFF331D2C),
                                    fontSize: 14,
                                    fontFamily: 'Jost',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                    "Subtitle",
                                      style: TextStyle(
                                        color: Color(0xFF331D2C),
                                        fontSize: 10,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Jost',
                                        fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 20,
                              width: 20,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(51, 29, 44, 1),
                                child: Icon(Icons.check, color: Colors.white, size: 10,),
                              ),
                            ),
                          ],
                        ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(239, 225, 209, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
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
                            child: Image.asset("assets/images/clipboard.png", width: 10, height: 10,),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Work Meeting",
                              style: TextStyle(
                                color: Color(0xFF331D2C),
                                fontSize: 14,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "Task 11:35 PM",
                              style: TextStyle(
                                color: Color(0xFF331D2C),
                                fontSize: 10,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 20,
                          width: 20,
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(51, 29, 44, 1),
                            child: Icon(Icons.check, color: Colors.white, size: 10,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color:  Color.fromRGBO(58,46,65, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/today.png", scale: 2,),
            Image.asset("assets/images/habit.png", scale: 2,),
            Image.asset("assets/images/tasks.png", scale: 2,),
            InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoriesPage()),
                  );
                },
                child: Image.asset("assets/images/categs.png",
                  scale: 2,)),
            InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatPage()),
                  );
                },
                child: Image.asset("assets/images/chat.png",
                  scale: 2,)
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Color.fromRGBO(58,46,65, 1),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return NewAddOverlay(); // Use your custom overlay widget
            },
          );
        },
        child: Icon(Icons.add, color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

