import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:shop_easy/core/app_colors.dart';

class CardBackView extends StatelessWidget {
  final String cvvNumber;
  final String formattedCVVNumber;

  const CardBackView({
    Key? key,
    required this.cvvNumber,
    required this.formattedCVVNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(1, 2, 3)
        ..setEntry(3, 2, 0.001)
        ..rotateY(math.pi * 1),

      //origin: Offset(MediaQuery.of(context).size.width * 2, -5),
      origin: Offset(MediaQuery.of(context).size.width / 4, 0),
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [
                secondaryDark.withAlpha(100),
                primaryDark.withAlpha(100),
              ],
            ),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: lilyWhite,
                blurRadius: 3.0,
                offset: Offset(
                  0.0,
                  1.0,
                ),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Container(
                  height: 40,
                  color: secondaryDark,
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 25,
                            width: 200,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(width: 32),
                        Text(
                          formattedCVVNumber,
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            letterSpacing: 1,
                            fontSize: 18,
                            color: secondaryDark,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 16,
                      color: Colors.black12,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 16,
                      width: 150,
                      color: Colors.black12,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 16,
                      width: 150,
                      color: Colors.black12,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
