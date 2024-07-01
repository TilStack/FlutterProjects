import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Line(){
  return Container(
    height: 16,
    decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(4)
    ),
  );
}

Widget ButtonLine(){
  return Container(
    height: 30,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

Widget Avatar(){
  return Container(
    height: 150,
    width: 150,
    decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15)
    ),
  );
}