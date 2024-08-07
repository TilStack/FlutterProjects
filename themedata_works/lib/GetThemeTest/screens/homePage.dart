import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('GetX Theme', style: GoogleFonts.poppins()),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.account_circle),
            )
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('TILStack.', style: GoogleFonts.poppins(fontSize: 20)),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
                Get.isDarkMode ? "assets/tillwhite.png" : "assets/darktill.png",
                height: 170,
                width: 170),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              // Fonction pour le changement du theme.
              Get.isDarkMode
                  ? Get.changeTheme(ThemeData.light())
                  : Get.changeTheme(ThemeData.dark());
            },
            child: const Text("Change Color Mark"),
          ),
        ],
      ),
    );
  }
}
