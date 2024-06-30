import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigator_bar_works/utils/constants.dart';

class CardContent extends StatelessWidget {
  const CardContent({required this.title, required this.subtitle, required this.image});

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        color: FIRST_COLOR.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: size.width/1.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: GoogleFonts.poppins(color: FIRST_COLOR, fontWeight: FontWeight.bold),),
                const SizedBox(height: 5,),
                Text(subtitle,style: GoogleFonts.poppins(color: FIRST_COLOR),),
                const SizedBox(height: 5,),
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: FIRST_COLOR),onPressed: (){}, child: Text("Shap Now", style: GoogleFonts.poppins(color: Colors.white),)),
              ],
            ),
          ),
          const Icon(Icons.person, color: SECOND_COLOR,size: 100,),
        ],
      ),
    );
  }
}
