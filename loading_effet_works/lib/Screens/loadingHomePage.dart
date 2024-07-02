import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../Widgets/shimmerLoading.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Shimmer Loading",
          style: GoogleFonts.poppins(),
        ),
        leading: Image.asset(
          "assets/till.png",
          height: 10,
          width: 10,
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              margin: const EdgeInsets.all(5),
              width: size.width,
              height: size.height,
              child: ListView.builder(itemBuilder: (context, index) {
                return loadingCard();
              }),
            )),
      ),
    );
  }
}

Shimmer loadingCard() {
  return Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              height: 150,
              width: double.infinity / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Line(),
                  const SizedBox(
                    height: 8,
                  ),
                  Line(),
                  const SizedBox(
                    height: 8,
                  ),
                  Line(),
                  const SizedBox(
                    height: 8,
                  ),
                  Line(),
                  const SizedBox(
                    height: 8,
                  ),
                  ButtonLine()
                ],
              ),
            ),
          ),
          Avatar()
        ],
      ),
    ),
  );
}
