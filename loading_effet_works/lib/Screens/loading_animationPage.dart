import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingAnimation extends StatefulWidget {
  const LoadingAnimation({super.key});

  @override
  State<LoadingAnimation> createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation> {
  @override
  Widget build(BuildContext context) {
    // ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Simple Loading',
          style: GoogleFonts.poppins(color: Colors.black),
        ),
        centerTitle: true,
        leading: Image.asset(
          "assets/till.png",
          height: 10,
          width: 10,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
                color: Colors.black, size: 100),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Loading, Please wait...",
            style: GoogleFonts.poppins(color: Colors.black87),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            // ignore: avoid_unnecessary_containers
            child: LoadingAnimationWidget.newtonCradle(
                color: Colors.black, size: 100),
          )
        ],
      ),
    );
  }
}
