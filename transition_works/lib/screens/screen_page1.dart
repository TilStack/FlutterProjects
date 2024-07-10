import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenPage1 extends StatefulWidget {
  const ScreenPage1({super.key});

  @override
  State<ScreenPage1> createState() => _ScreenPage1State();
}

class _ScreenPage1State extends State<ScreenPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.2),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text(
          '',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: Text(
          '',
          style: GoogleFonts.poppins(),
        ),
      ),
    );
  }
}
