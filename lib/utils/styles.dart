import 'package:flutter/material.dart';

class Styles {
  //colors
  static const Color _textColorDarker = Color(0xff373a22);
  static const Color _textColor = Color(0xff5c613a);
  // static const Color surfaceColor = Color(0xffdcec79);
  static const Color surfaceColor = Color(0xffe2e7c7);

  //fonts
  static const kCormorantGaramondRegular = 'CormorantGaramond-Regular';
  static const kCormorantGaramondLight = 'CormorantGaramond-Light';
  static const kWaterBrushFont = 'WaterBrush';
  static const kMsMadiFont = 'MsMadi'; //unused

  static TextStyle countdownStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w400,
      color: _textColorDarker,
      fontFamily: kCormorantGaramondRegular,
      fontSize: 32,
    );
  }

  static TextStyle labelStyle() {
    return const TextStyle(
      // fontWeight: FontWeight.w500,
      fontFamily: kWaterBrushFont,
      color: _textColor,
      fontSize: 50,
    );
  }
}
