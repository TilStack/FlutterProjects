import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenPage5 extends StatefulWidget {
  const ScreenPage5({super.key});

  @override
  State<ScreenPage5> createState() => _ScreenPage5State();
}

class _ScreenPage5State extends State<ScreenPage5> {
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
