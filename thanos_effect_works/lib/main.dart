import 'package:flutter/material.dart';
import 'package:thanos_effect_works/screens/thanos_delete_page.dart';
//import 'package:thanos_effect_works/utils/constants.dart';

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
      home: const Thanos_Delete(title: 'Thanos Delete effet'),
    );
  }
}
