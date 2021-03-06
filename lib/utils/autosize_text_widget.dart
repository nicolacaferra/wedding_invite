import 'package:flutter/material.dart';

//wrapping a Text with a FitteBox widget is used to scale size automatically when width is too small
class AutoSizeText extends StatelessWidget {
  final String text;

  final TextStyle textStyle;

  final double? size;

  final int? maxLines;

  final TextAlign? textAlign;

  const AutoSizeText({
    Key? key,
    required this.text,
    required this.textStyle,
    this.size,
    this.maxLines,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          text,
          maxLines: maxLines,
          style: size != null ? textStyle.copyWith(fontSize: size) : textStyle,
          textAlign: textAlign,
        ),
      ),
    );
  }
}
