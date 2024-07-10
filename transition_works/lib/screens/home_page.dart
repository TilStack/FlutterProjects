import 'package:concentric_transition/page_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:transition_works/screens/screen_page1.dart';
import 'package:transition_works/screens/screen_page2.dart';
import 'package:transition_works/screens/screen_page3.dart';
import 'package:transition_works/screens/screen_page4.dart';
import 'package:transition_works/screens/screen_page6.dart';
import 'package:turn_page_transition/turn_page_transition.dart';
import '../utils/routefile.dart';
import 'screen_page5.dart';

class HomePageWork extends StatefulWidget {
  const HomePageWork({super.key});

  @override
  State<HomePageWork> createState() => _HomePageWorkState();
}

class _HomePageWorkState extends State<HomePageWork> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(115, 20, 20, 20),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Router transition",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              margin: EdgeInsets.only(top: 10, bottom: size.height * 0.02),
              child: Image.asset(
                "assets/png/tilwhite.png",
                height: size.height / 3,
                width: size.height / 3,
              ),
            ),
            Text(
              'Examples of page transition',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            //Using Get
            GestureDetector(
              onTap: () {
                Get.to(
                  () => const ScreenPage1(),
                  transition: Transition.circularReveal,
                  duration: const Duration(seconds: 2),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                margin: const EdgeInsets.only(top: 10, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 1, color: Colors.white),
                ),
                child: Text(
                  'Using Get',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            //Using the function
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  createRoute(
                    ScreenPage2(),
                  ),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 1, color: Colors.white),
                ),
                child: Text(
                  'Using a function',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            //Using the dependency page_transition: ^2.1.0
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const ScreenPage3(),
                    type: PageTransitionType.rightToLeftWithFade,
                    duration: Duration(
                      seconds: 1,
                    ),
                    // inheritTheme: true,
                    //ctx: context,
                    //isIos: true,
                  ),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 1, color: Colors.white),
                ),
                child: Text(
                  'Using page_transition',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            //Using the dependency turn_page_transition
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  TurnPageRoute(
                    overleafColor: Colors.grey,
                    animationTransitionPoint: 0.5,
                    transitionDuration: const Duration(milliseconds: 300),
                    reverseTransitionDuration:
                        const Duration(milliseconds: 300),
                    builder: ((context) => ScreenPage4()),
                  ),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 1, color: Colors.white),
                ),
                child: Text(
                  'Using turn_page_transition',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //Using the dependency concentric_transition
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  ConcentricPageRoute(
                    builder: (ctx) {
                      return ScreenPage5();
                    },
                  ),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 1, color: Colors.white),
                ),
                child: Text(
                  'Using concentric_transition',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //Using simple method
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ScreenPage6();
                    },
                  ),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                child: Text(
                  'Normal method',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
