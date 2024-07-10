import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenPage2 extends StatefulWidget {
  const ScreenPage2({super.key});

  @override
  State<ScreenPage2> createState() => _ScreenPage2State();
}

class _ScreenPage2State extends State<ScreenPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Tween Transition',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: Text(
          'Transition with Tween Function',
          style: GoogleFonts.poppins(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
