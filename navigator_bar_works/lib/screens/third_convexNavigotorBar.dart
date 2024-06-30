import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigator_bar_works/utils/constants.dart';

class ConvexNavigatorBar extends StatefulWidget {
  const ConvexNavigatorBar({super.key});

  @override
  State<ConvexNavigatorBar> createState() => _ConvexNavigatorBarState();
}

class _ConvexNavigatorBarState extends State<ConvexNavigatorBar> {
  int initialActiveLink = 1;

  @override
  Widget build(BuildContext context) {

    final items = [
      TabItem(icon: Icons.person_2_outlined,title: 'Profile'),
      TabItem(icon: Icons.home,title: 'Home'),
      TabItem(icon: Icons.notifications,title: 'Notifications'),
      TabItem(icon: Icons.device_thermostat,title: 'Content'),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Convex Bottom Navigator Bar"),
        leading: Image.asset(
          "assets/png/till.png",
          height: 10,
          width: 10,
        ),
      ),
      body: Center(
        child: Text(
          "$initialActiveLink",
          style: GoogleFonts.poppins(
            color: FIRST_COLOR,
            fontSize: 50
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar.badge({0:'',1:'',2:'99+',3:Colors.redAccent},
        style: TabStyle.react,
        items: items,
        badgePadding: const EdgeInsets.all(0),
        badgeMargin:  const EdgeInsets.only(bottom: 30,left: 18),
        height: 60,
        initialActiveIndex: initialActiveLink,
        backgroundColor: FIRST_COLOR,
        //shadowColor: Colors.blueAccent,
        curveSize:100,
        onTap: (index)=> setState(() {
          initialActiveLink = index;
        }),
      ),
    );
  }
}
