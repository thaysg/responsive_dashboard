import 'package:flutter/material.dart';

import 'app_colors.dart';

class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final double height;
  final TextAlign? textAlign;

  const PrimaryText({
    Key? key,
    required this.text,
    this.fontWeight = FontWeight.w400,
    this.color = secondaryDark,
    this.size = 20,
    this.height = 1.3,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        height: height,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
