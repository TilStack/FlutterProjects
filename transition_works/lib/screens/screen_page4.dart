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
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Tuch Page Transition',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: Text(
          'Tuch Page transition dependency',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
