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
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Get transition',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: Text(
          'Transition with Get',
          style: GoogleFonts.poppins(fontSize: 18),
        ),
      ),
    );
  }
}
