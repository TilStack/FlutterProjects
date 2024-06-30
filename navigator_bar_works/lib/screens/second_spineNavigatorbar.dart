import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigator_bar_works/utils/constants.dart';
import 'package:navigator_bar_works/widgets/SecondOne/card_contain.dart';
import 'package:navigator_bar_works/widgets/SecondOne/category.dart';
import 'package:navigator_bar_works/widgets/SecondOne/item.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

import '../widgets/FirstOne/grid_card.dart';

class SpinNavigatorBar extends StatefulWidget {
  const SpinNavigatorBar({super.key});

  @override
  State<SpinNavigatorBar> createState() => _SpinNavigatorBarState();
}

class _SpinNavigatorBarState extends State<SpinNavigatorBar> {
  final List<Map<String, dynamic>> _items = [
    {'icon': Icons.star, 'title': 'Star'},
    {
      'icon': Icons.favorite,
      'title': 'Favorite',
    },
    {
      'icon': Icons.home,
      'title': 'Home',
    },
    {
      'icon': Icons.settings,
      'title': 'Settings',
    },
    {
      'icon': Icons.camera,
      'title': 'Camera',
    },
    {
      'icon': Icons.phone,
      'title': 'Phone',
    },
    {
      'icon': Icons.map,
      'title': 'Map',
    },
    {
      'icon': Icons.notifications,
      'title': 'Notifications',
    },
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Spinner Bottom Navigator Bar"),
        leading: Image.asset(
          "assets/png/till.png",
          height: 10,
          width: 10,
        ),
      ),
      body: SpinCircleBottomBarHolder(
        bottomNavigationBar: SCBottomBarDetails(
            bnbHeight: 80,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black26),
            activeIconTheme: IconThemeData(color: SECOND_COLOR),
            circleColors: [Colors.white, SECOND_COLOR, FIRST_COLOR],
            titleStyle:
                GoogleFonts.poppins(color: Colors.black45, fontSize: 12),
            activeTitleStyle: GoogleFonts.poppins(
                color: SECOND_COLOR, fontSize: 12, fontWeight: FontWeight.bold),
            actionButtonDetails: SCActionButtonDetails(
                color: SECOND_COLOR,
                icon: Icon(Icons.expand_less),
                elevation: 0),
            items: [
              SCBottomBarItem(
                  icon: Icons.verified_user, onPressed: () {}, title: "Users"),
              SCBottomBarItem(
                  icon: Icons.supervised_user_circle,
                  onPressed: () {},
                  title: "Details"),
              SCBottomBarItem(
                  icon: Icons.notifications,
                  onPressed: () {},
                  title: 'Notifications'),
              SCBottomBarItem(
                  icon: Icons.details, onPressed: () {}, title: 'Details'),
            ],
            circleItems: [
              SCItem(icon: Icon(Icons.add), onPressed: () {}),
              SCItem(icon: Icon(Icons.print), onPressed: () {}),
              SCItem(icon: Icon(Icons.map), onPressed: () {}),
            ]),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: size.width / 1.30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                )),
                            Text(
                              'Search',
                              style: GoogleFonts.poppins(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                              color: FIRST_COLOR,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.list,
                                color: SECOND_COLOR,
                              ))),
                    ],
                  ),
                ),
              ),
              const CardContent(
                title: 'My First Title',
                subtitle:
                    'The name given to a book, movie, song, or any other creative work. ',
                image: "assets/png/till.png",
              ),
              CategoryCard(title: 'Category', all: 'See All'),
              SizedBox(
                height: 100,
                width: size.width / 1.2,
                child: ListView.builder(
                    itemCount: _items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final item = _items[index];
                      return Item(
                        title: item['title'],
                        iconData: item['icon'],
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              CategoryCard(title: 'Products', all: 'See All'),
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
                    itemCount: 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
