import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snappable_thanos/snappable_thanos.dart';
import 'package:thanos_effect_works/utils/constants.dart';

class CardTitle extends StatefulWidget {
  CardTitle({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title;
  final String subtitle;
  final String image;

  @override
  State<CardTitle> createState() => _CardTitleState();
}

class _CardTitleState extends State<CardTitle> {
  final key = GlobalKey<SnappableState>();

  @override
  Widget build(BuildContext context) {
    bool contentvalue = false;
    bool contentvalue2 = false;

    return Snappable(
      key: key,
      snapOnTap: false,
      duration: Duration(seconds: 2),
      onSnapped: () {
        print('OnSnapped');
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.grey.shade300), // Use BorderSide here
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: ListTile(
            title: Text(
              widget.title,
              style: GoogleFonts.poppins(
                color: FIRST_COLOR,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                widget.subtitle,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
            leading: ClipOval(
              child: Image.asset(
                widget.image,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            trailing: PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: true,
                  child: ListTile(
                    title: Text(
                      'Delete',
                      style: GoogleFonts.poppins(
                        color: SECOND_COLOR,
                      ),
                    ),
                    leading: Icon(
                      Icons.delete,
                      color: SECOND_COLOR,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: false,
                  child: ListTile(
                    title: Text(
                      'Share',
                      style: GoogleFonts.poppins(
                        color: FIRST_COLOR,
                      ),
                    ),
                    leading: Icon(
                      Icons.share,
                      color: FIRST_COLOR,
                    ),
                  ),
                ),
              ],
              onSelected: (value) {
                setState(() {
                  if (value) {
                    contentvalue = true;
                  } else {
                    contentvalue2 = true;
                  }
                });
                snap();
              },
            ),
          ),
        ),
      ),
    );
  }

  void snap() {
    key.currentState?.snap();
  }
}
