import 'package:button_animation_works/widgets/buttonItem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter button Animation',
          style: GoogleFonts.roboto(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ButtonItem(
                child: Text(
                  'First Element',
                  style: GoogleFonts.roboto(),
                ),
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
