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
