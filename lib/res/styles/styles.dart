import 'package:flutter/material.dart';

Color color1 = const Color.fromARGB(255, 3, 4, 5);

class AppStyles {
  static Color c1 = color1;

  static Color c2 = const Color.fromARGB(255, 0, 0, 0);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color c4 = const Color.fromARGB(255, 29, 153, 255);
  static Color ticketBlue = const Color(0xFF526799);
  static Color planeColor = Colors.white;
  static Color ticketOrange = const Color.fromARGB(255, 213, 131, 7);
  static Color findTicketColor = const Color(0xD91130CE);
  static TextStyle t1 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: c1,
  );
  static TextStyle t2 = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w500,
    color: c2,
  );
  static TextStyle t3 = TextStyle(fontSize: 17, fontWeight: FontWeight.w700);
  static TextStyle t4 = TextStyle(color: c4);
  static TextStyle headlinesT1 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w300,
  );
}
