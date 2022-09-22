import 'package:flutter/material.dart';


class Constants {
  static Color primaryColor = Colors.black87;
  /*
  : #FFFFFF;
  : #EEE5E9;
  : #00C2CB;
  : #050A30;
  : #4CF997;
  : #725752;
  : #9F9AA4;
  : #FAA916;
  : #FF495C;
   */
  static ButtonStyle customButtonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    primary: Colors.black87,
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
  );
}