import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigator_bar_works/utils/constants.dart';

Widget CategoryCard({required String title, required String all}){
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: GoogleFonts.poppins(color: FIRST_COLOR),),
        TextButton(onPressed: (){}, child: Text(all, style: GoogleFonts.poppins(color: SECOND_COLOR),)),
      ],
    ),
  );
}