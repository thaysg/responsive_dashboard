import 'package:flutter/material.dart';

class DefaultCircularProgressWidget extends StatelessWidget {
  final double height;
  final double width;
  const DefaultCircularProgressWidget(
      {Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: const CircularProgressIndicator(
        strokeWidth: 1,
        backgroundColor: Color(0xFFE9E9FF),
        valueColor: AlwaysStoppedAnimation<Color>(
          Color(0xFF7012CE),
        ),
        color: Color(0xFFBA8CE7),
      ),
    );
  }
}
