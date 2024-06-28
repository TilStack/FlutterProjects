import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardContent extends StatelessWidget {
  const CardContent({required this.title, required this.subtitle, required this.image});

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
          title: Text(title,style: GoogleFonts.poppins(),),
          subtitle: Text(subtitle,style: GoogleFonts.poppins(),),
          leading: ClipOval(
            child: Image.asset(image,height: 100,width: 100,),
          ),
      ),
    );
  }
}
