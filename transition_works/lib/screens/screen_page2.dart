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
