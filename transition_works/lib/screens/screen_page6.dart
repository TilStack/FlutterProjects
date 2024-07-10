import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenPage6 extends StatefulWidget {
  const ScreenPage6({super.key});

  @override
  State<ScreenPage6> createState() => _ScreenPage6State();
}

class _ScreenPage6State extends State<ScreenPage6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text(
          'Simple method',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: Text(
          textAlign: TextAlign.center,
          'Transition page without dependency',
          style: GoogleFonts.poppins(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
