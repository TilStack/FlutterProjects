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
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Page Transition',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: Text(
          'Page Transition',
          style: GoogleFonts.poppins(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
