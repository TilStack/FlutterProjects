import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigator_bar_works/utils/constants.dart';

Widget Item({required String title, required IconData iconData}){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Container(
            color: FIRST_COLOR.withOpacity(0.2),
            padding: const EdgeInsets.all(20),
            child: Icon(
              iconData,
              size: 35,
              color: SECOND_COLOR,
            ),
          ),
        ),
        Text(title, style: GoogleFonts.poppins(color: FIRST_COLOR),),
      ],
    ),
  );
}