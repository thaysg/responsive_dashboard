import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_colors.dart';
import '../utils/ternary_clean.dart';

class ButtonDefaultWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool enabled;
  final Color? color;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? textColor;
  final String? Function(String?)? validator;
  final BorderSide? borderSide;
  final double marginHorizontal;
  final double paddingVertical;
  final Icon? icon;

  const ButtonDefaultWidget({
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.enabled = true,
    this.color,
    Key? key,
    this.width,
    this.height,
    this.fontSize,
    this.textColor,
    this.validator,
    this.borderSide,
    this.marginHorizontal = 0,
    this.paddingVertical = 10,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(
        horizontal: marginHorizontal,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          colors: [
            primaryDark,
            secondaryDark.withOpacity(0.8),
            primaryDark,
          ],
        ),
      ),
      width: width,
      duration: const Duration(milliseconds: 500),
      child: MaterialButton(
        height: height,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.symmetric(
          vertical: paddingVertical,
        ),
        onPressed: enabled && !isLoading ? onPressed : null,
        child: Visibility(
          visible: !isLoading,
          replacement: const CircularProgressIndicator.adaptive(
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.white,
            ),
          ),
          child: Row(
            mainAxisAlignment: ternaryClean(
              condition: icon != null,
              caseTrue: MainAxisAlignment.spaceEvenly,
              caseFalse: MainAxisAlignment.center,
            ),
            children: [
              icon ?? const SizedBox(),
              AutoSizeText(
                text,
                style: Get.textTheme.headline1!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize ?? 16,
                  color: Colors.white,
                ),
                maxLines: 1,
                textAlign: TextAlign.center,
                minFontSize: 5,
              ),
            ],
          ),
        ),
      ),
    );
    /* ElevatedButton(
      onPressed: enabled && isLoading == false ? onPressed : onPressed,
      style: ElevatedButton.styleFrom(
        primary: enabled ? color : Colors.grey[400],
        shadowColor: secondaryDark,
        side: borderSide,
        onSurface: enabled == false ? grey : primaryDark,
        minimumSize: Size(
          width ?? MediaQuery.of(context).size.width * 0.8,
          height ?? 50,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize ?? 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ); */
  }
}
