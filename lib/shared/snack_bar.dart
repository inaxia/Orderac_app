import 'package:flutter/material.dart';

showSnackBar(icon, message) {
  return SnackBar(
    // backgroundColor: customRed,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    content: Row(
      children: [
        Icon(icon),
        SizedBox(width: 12.0),
        Text(
          message,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
