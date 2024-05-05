
import 'package:flutter/material.dart';
const kPrimaryColor =Color(0xFFB0BEC5);
const  decoration =  InputDecoration(
  labelStyle: TextStyle(
    color: Colors.black,
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      width: 1,
    ),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      width: 1,
    ),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
      width: 1,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
  ),
);
