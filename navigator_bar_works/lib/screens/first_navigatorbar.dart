import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:navigator_bar_works/utils/constants.dart';
import 'package:navigator_bar_works/widgets/FirstOne/card_contain.dart';
import 'package:navigator_bar_works/widgets/FirstOne/grid_card.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FirstNavigatorBar extends StatefulWidget {
  const FirstNavigatorBar({super.key});

  @override
  State<FirstNavigatorBar> createState() => _FirstNavigatorBarState();
}

class _FirstNavigatorBarState extends State<FirstNavigatorBar> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Blurrer Bottom Navigator Bar"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      top: 20, right: 10, left: 10, bottom: 15),
                  child: const CardContent(
                    title: 'My First Title',
                    subtitle:
                        'The name given to a book, movie, song, or any other creative work. ',
                    image: 'assets/png/till.png',
                  ),
                ),
                Container(
                  width: size.width,
                  height: 2,
                  color: SECOND_COLOR.withOpacity(0.5),
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final item = ITEMS[index];
                        return GridCard(
                          icon: item['icon'],
                          title: item['title'],
                          subtitle: item['subtitle'],
                        );
                      },
                      itemCount: ITEMS.length),
                ),
                SizedBox(height: 80),
              ],
            ),
          ),

          // Custum navigation Bar
          Positioned(
              bottom: 18,
              left: 18,
              right: 18,
              height: 86,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: theme.scaffoldBackgroundColor),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                      bottomLeft: Radius.circular(52),
                      bottomRight: Radius.circular(52)),
                  color: theme.scaffoldBackgroundColor.withOpacity(0.1),
                ),
                child: ClipRect(
                  child: ClipPath(
                    clipper: MyClipper(),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                      child: Container(),
                    ),
                  ),
                ),
              )),

          // Button Navigation Bar item
          Positioned(
              bottom: 18,
              left: 22,
              right: 22,
              height: 86,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  BuildItem(Icons.home_outlined, 0),
                  BuildItem(Icons.apps, 1),
                  BuildItem(Icons.notifications_active_rounded, 2),
                  BuildItem(Icons.settings_outlined, 3),
                ],
              )),
        ],
      ),
    );
  }

  Widget BuildItem(IconData icon, index) {
    return ZoomTapAnimation(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      child: Icon(icon,
          color: selectedItem == index ? SECOND_COLOR : Colors.yellow,
          size: selectedItem == index ? 35 : 30),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(64, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
