import 'package:flutter/material.dart';
//import 'package:loading_effet_works/Screens/loadingHomePage.dart';
import 'package:loading_effet_works/constants/data.dart';

import 'Screens/loading_animationPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const LoadingAnimation(),
    );
  }
}
