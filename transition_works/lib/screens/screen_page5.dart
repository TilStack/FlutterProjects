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
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text(
          'Concentric Transition',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: Text(
          'Concentric Transition Page',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
