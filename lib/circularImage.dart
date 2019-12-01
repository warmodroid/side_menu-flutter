import 'package:flutter/material.dart';

Widget circularImage() {
  return Container(
      width: 200.0,
      height: 200.0,
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.teal, width: 10.0, style: BorderStyle.solid),
          image: new DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/profile.jpg")
          )
      ),
  );
}