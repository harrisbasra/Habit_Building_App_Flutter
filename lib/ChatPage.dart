import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(51, 29, 44, 0.6),
            image: DecorationImage(
              image: AssetImage("assets/images/shave_background.png", ),
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.2),
                BlendMode.hardLight,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.report_problem, color: Color.fromRGBO(63, 46, 62, 1),),
                          SizedBox(width: 5,),
                          Text("Report", style: TextStyle(color: Color.fromRGBO(
                              0, 0, 0, 1),),),
                          Expanded(flex: 1, child: SizedBox(width: 40)),
                          Text(
                            'Community Chat',
                            // textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'Jost', color: Color.fromRGBO(63, 46, 62, 1), fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Expanded(flex: 2, child: SizedBox(width: 40)),
                          Icon(Icons.logout)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 1,),
              Divider(color: Color.fromRGBO(63, 46, 62, 1),)
            ],
          ),
        ),
      ),

      body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(51, 29, 44, 0.6),
            image: DecorationImage(
              image: AssetImage("assets/images/shave_background.png"),
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.2),
                BlendMode.hardLight,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ChatMessage(isSentByMe: true, text: 'Hello there!', time: "06:32 PM", name: "Robert Fox",),
                    ChatMessage(isSentByMe: false, text: 'Hi! How are you?', time: "06:33 PM", name: "Kristin Watson",),
                    ChatMessage(isSentByMe: true, text: 'Hello there!', time: "06:32 PM", name: "Robert Fox",),
                    ChatMessage(isSentByMe: false, text: 'Hi! How are you?', time: "06:33 PM", name: "Kristin Watson",),
                    ChatMessage(isSentByMe: true, text: 'Hello there!', time: "06:32 PM", name: "Robert Fox",),
                  ],
                ),
              ),
              Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onTap: () {},
                            style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                            decoration: InputDecoration(
                              //hintText: 'Type a message...',
                              hintStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                              filled: true,
                              fillColor: Colors.white, // Background color
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.attach_file_sharp),
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> TrackLocation()));
                          },
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(167, 130, 149, 0.8),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                              // Handle sending message
                            },
                          ),
                        ),
                      ],
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

class ChatMessage extends StatelessWidget {
  final bool isSentByMe;
  final String text;
  final String time;
  final String name;

  ChatMessage({required this.isSentByMe, required this.text, required this.time, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment:
        isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (isSentByMe) Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(time, style:
            TextStyle(
              color: Color(0xFF3F2E3E),
              fontSize: 12,
              fontFamily: 'Jost',
              fontWeight: FontWeight.w400,
            ),),
          ),
          if(isSentByMe) Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Text(text),
              ),
              SizedBox(height: 5,),
              Text(name,
                textAlign: TextAlign.right,
                style: TextStyle(
                color: Color(0xFF3F2E3E),
                fontSize: 15,
                fontFamily: 'Jost',
                fontWeight: FontWeight.w400,
              ),)
            ],
          ),
          if(!isSentByMe) Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(0),
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Text(text),
              ),
              SizedBox(height: 5,),
              Text(name,
                textAlign: TextAlign.left,
                style: TextStyle(
                color: Color(0xFF3F2E3E),
                fontSize: 15,
                fontFamily: 'Jost',
                fontWeight: FontWeight.w400,
              ),)
            ],
          ),
          if (!isSentByMe) Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(time, style:
              TextStyle(
              color: Color(0xFF3F2E3E),
              fontSize: 12,
              fontFamily: 'Jost',
              fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
