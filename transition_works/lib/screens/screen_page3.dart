import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenPage3 extends StatefulWidget {
  const ScreenPage3({super.key});

  @override
  State<ScreenPage3> createState() => _ScreenPage3State();
}

class _ScreenPage3State extends State<ScreenPage3> {
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
