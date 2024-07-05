import 'package:flutter/material.dart';
import 'package:themedata_works/simpleThemeTest/screens/home.dart';

import 'theme/theme.dart';

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
      title: 'Flutter Demo',
      theme: /*ThemeData.light()*/lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: /*ThemeData.dark()*/darkTheme,
      home: HomePage()
    );
  }
}