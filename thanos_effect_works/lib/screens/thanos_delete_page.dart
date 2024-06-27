import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/constants.dart';
import '../wiidgets/card_property.dart';

class Thanos_Delete extends StatefulWidget {
  const Thanos_Delete({super.key, required this.title});
  final String title;

  @override
  State<Thanos_Delete> createState() => _Thanos_DeleteState();
}

class _Thanos_DeleteState extends State<Thanos_Delete> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> cardData = [
      {'title': 'The Great Gatsby', 'subtitle': 'F. Scott Fitzgerald', 'image': 'assets/png/cc.png'},
      {'title': 'To Kill a Mockingbird', 'subtitle': 'Harper Lee', 'image': 'assets/png/til.png'},
      {'title': '1984', 'subtitle': 'George Orwell', 'image': 'assets/png/tillwhite.png'},
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SECOND_COLOR,
        foregroundColor: FIRST_COLOR,
        title: Text(widget.title,style: GoogleFonts.poppins(
          letterSpacing: 4
        ),),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: cardData.length,
          itemBuilder: (context, index) {
            return CardTitle(
              title: cardData[index]['title']!,
              subtitle: cardData[index]['subtitle']!,
              image: cardData[index]['image']!,
            );
          },
        ),
      )
    );
  }
}
