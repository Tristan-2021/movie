import 'package:flutter/material.dart';

class PaddingText extends StatelessWidget {
  const PaddingText(
      {Key? key,
      required this.movie,
      required this.left,
      this.top = 15,
      required this.right,
      this.botton = 0,
      required this.style})
      : super(key: key);

  final String movie;
  final double left, top, right, botton;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, top: top, right: right, bottom: botton),
      child: Text(
        movie,
        style: style,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
