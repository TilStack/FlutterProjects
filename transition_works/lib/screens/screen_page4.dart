import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenPage4 extends StatefulWidget {
  const ScreenPage4({super.key});

  @override
  State<ScreenPage4> createState() => _ScreenPage4State();
}

class _ScreenPage4State extends State<ScreenPage4> {
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
