import 'package:flutter/material.dart';
import 'package:navigator_bar_works/screens/first_navigatorbar.dart';
import 'package:navigator_bar_works/utils/data.dart';

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
      home: FirstNavigatorBar(),
    );
  }
}
