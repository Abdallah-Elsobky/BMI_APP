
import 'package:flutter/material.dart';
import 'package:themed/themed.dart';

class MyTheme{
  static const textColor = ColorRef(Colors.black);
  static const disledColor = ColorRef(Colors.black54);
  static ColorRef boardColor = ColorRef(Colors.black26);
  static const buttonTextColor = ColorRef(Colors.white,id: 'buttonTextColor');
  static const backgroundColor = ColorRef(Colors.white,id: 'backgroundColor');
  static const primary = ColorRef(Color(0xFF040B30));
  static const maleColor = ColorRef(Colors.blue);
  static const femaleColor = ColorRef(Colors.pink);
  static const containerColor = ColorRef(Colors.white12);
  static const cardTextColor = ColorRef(Colors.white54);
  static const underweightColor = ColorRef(Colors.yellow);
  static const normalWeightColor = ColorRef(Colors.green);
  static const overweightColor = ColorRef(Colors.orange);
  static const obeseWeightColor = ColorRef(Colors.red);


  static const mainText = TextStyleRef(
    TextStyle(
      fontWeight: FontWeight.bold,
      color: textColor,
    ),
  );
}

Map<ThemeRef,Object> LightTheme = {
  MyTheme.backgroundColor : Colors.white,
  MyTheme.disledColor : Colors.black54,
  MyTheme.boardColor : Colors.black54,
  MyTheme.textColor: Colors.black.withOpacity(.8),
  MyTheme.containerColor : Colors.black.withOpacity(.2),
  MyTheme.cardTextColor : Colors.black.withOpacity(.7),
  MyTheme.maleColor : Colors.blue.shade600,
  MyTheme.femaleColor : Colors.pink.shade600,
  MyTheme.primary : Color(0xFF040B30),
  MyTheme.underweightColor : Colors.yellow.shade600,
  MyTheme.normalWeightColor : Colors.green.shade600,
  MyTheme.overweightColor : Colors.orange.shade600,
  MyTheme.obeseWeightColor : Colors.red.shade600,
};


Map<ThemeRef,Object> DarkTheme = {
  MyTheme.backgroundColor : Color(0xFF040B30),
  MyTheme.disledColor : Colors.grey,
  MyTheme.boardColor : Colors.grey.withOpacity(.2),
  MyTheme.textColor: Colors.white,
  MyTheme.containerColor : Colors.white12,
  MyTheme.cardTextColor : Colors.white.withOpacity(.9),
  MyTheme.primary : Colors.blue,
};