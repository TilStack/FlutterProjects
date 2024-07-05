import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text('Add new Picture',textAlign: TextAlign.center,),
            ),
            ElevatedButton(style: ElevatedButton.styleFrom( maximumSize:  Size(250, 80),),onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("New Categorie"),const SizedBox(width: 5,),Icon(Icons.add_a_photo_outlined)],))
          ],
        ),
      ),
    );
  }
}
