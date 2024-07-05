import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themedata_works/ProviderThemeTest/screens/homePage.dart';
import 'package:themedata_works/ProviderThemeTest/theme/themeProvider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context)=> ThemeProvider(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: Provider.of<ThemeProvider>(context).themeData,
        home: HomePage()
    );
  }
}