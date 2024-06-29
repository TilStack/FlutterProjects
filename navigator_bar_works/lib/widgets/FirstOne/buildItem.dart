import 'package:flutter/cupertino.dart';
import 'package:navigator_bar_works/utils/constants.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

Widget BuildItem(IconData icon, index){
  return ZoomTapAnimation(
    onTap: (){
    },
    child: Icon(
        icon,
        color: SECOND_COLOR,
        size: 30
    ),
  );
}