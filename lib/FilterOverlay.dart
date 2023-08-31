import 'package:flutter/material.dart';

class FilterOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop(); // Close the overlay
      },
      child: Material(
        color: Colors.transparent,
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 350,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(); // Close the overlay
                      },
                      child: Icon(Icons.close),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "Filters",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Activity Type",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      height: 50,

                      width: ((MediaQuery.of(context).size.width * 0.8)/2)-30,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(240, 240, 240, 1.0),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color.fromRGBO(108, 106, 106, 1),
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: DropdownButton<String>(
                          hint: Text('All',
                            style: TextStyle(
                            color: Color(0xFFD9D9D9),
                            fontSize: 10,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400,
                          ),),

                          focusColor: Colors.white,
                          underline: Container(),
                          //value: ,
                          dropdownColor: Colors.white,
                          onChanged: (newValue) {

                          },
                          icon: Icon(Icons.arrow_drop_down), // Down arrow icon
                          items: [
                            DropdownMenuItem(
                              value: 'Option 1',
                              child: Text('Option 1',style: TextStyle(
                                color: Color(0xFFD9D9D9),
                                fontSize: 10,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400,
                              ),),
                            ),
                            DropdownMenuItem(
                              value: 'Option 2',
                              child: Text('Option 2',style: TextStyle(
                                color: Color(0xFFD9D9D9),
                                fontSize: 10,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400,
                              ),),
                            ),
                            DropdownMenuItem(
                              value: 'Option 3',
                              child: Text('Option 3',style: TextStyle(
                                color: Color(0xFFD9D9D9),
                                fontSize: 10,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w400,
                              ),),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                    SizedBox(width: 10),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Category",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        height: 50,

                        width: ((MediaQuery.of(context).size.width * 0.8)/2)-30,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(240, 240, 240, 1.0),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color.fromRGBO(108, 106, 106, 1),
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: DropdownButton<String>(
                            hint: Text('Select',style: TextStyle(
                              color: Color(0xFFD9D9D9),
                              fontSize: 15,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w500,
                            ),),
                            focusColor: Colors.white,
                            underline: Container(),
                            //value: ,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {

                            },
                            icon: Icon(Icons.arrow_drop_down), // Down arrow icon
                            items: [
                              DropdownMenuItem(
                                value: 'Option 1',
                                child: Text('Option 1',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Jost',
                                  fontWeight: FontWeight.w500,
                                ),),
                              ),
                              DropdownMenuItem(
                                value: 'Option 2',
                                child: Text('Option 2',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Jost',
                                  fontWeight: FontWeight.w500,
                                ),),
                              ),
                              DropdownMenuItem(
                                value: 'Option 3',
                                child: Text('Option 3',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Jost',
                                  fontWeight: FontWeight.w500,
                                ),),
                              ),
                            ],
                          )
                        ),
                      )
                    ],

                  ),

                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Activity Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      height: 50,
                      color: Color.fromRGBO(240, 240, 240, 1.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter text here',
                          hintStyle: TextStyle(
                            color: Color(0xFFD9D9D9),
                        fontSize: 15,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w500,
                      ),
                          suffixIcon: Image.asset("assets/icons/search.png", width: 20, height: 20,),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(108, 106, 106, 1.0)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(108, 106, 106, 1.0)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Color.fromRGBO(168, 131, 150, 1),Color.fromRGBO(188, 158, 167,1), Color.fromRGBO(238, 223, 208,1)],
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HomePage()),
                      // );
                    },
                    child: Text(
                      'Apply Filters',
                      style: TextStyle(
                        fontFamily: 'Jost',
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
