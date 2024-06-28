import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigator_bar_works/utils/constants.dart';

class GridCard extends StatelessWidget {
  const GridCard({super.key,required this.icon, required this.title, required this.subtitle});

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Card(
      color: theme.primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: SECOND_COLOR,size: 25,),
            Text(title, style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),),
            Text(subtitle,textAlign: TextAlign.center, style: GoogleFonts.poppins(color: SECOND_COLOR.withOpacity(1)),),
          ],
        ),
      ),
    );
  }
}
