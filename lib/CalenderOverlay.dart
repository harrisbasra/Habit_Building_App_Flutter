import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart'; // Import the table_calendar package

class CalenderOverlay extends StatefulWidget {
  @override
  _CalenderOverlayState createState() => _CalenderOverlayState();
}

class _CalenderOverlayState extends State<CalenderOverlay> {

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // New Reminder Text
                  Text(
                    "Select a Date",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 15,),
                  // Add the TableCalendar widget
                  TableCalendar(
                    firstDay: DateTime(1923, 8, 3), // July 3, 2023 is a Monday
                    lastDay: DateTime(2123, 8, 31),
                    calendarStyle: CalendarStyle(

                    ),
                    headerStyle: HeaderStyle(
                      titleTextStyle: TextStyle(
                        color: Color(0xFF3F2E3E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    startingDayOfWeek: StartingDayOfWeek.monday, focusedDay: DateTime.now(),
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
