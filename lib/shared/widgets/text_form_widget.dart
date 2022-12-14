import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/app_colors.dart';

class TextFormWidget extends StatelessWidget {
  final FocusNode? focusNode;
  final bool enabled;
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? formatters;
  final bool obscureText;
  final void Function()? changeIsShowPassword;
  final TextAlign textAlign;
  final TextInputAction? textInputAction;
  final String? helperText;
  final int? maxLength;
  final int maxLines;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool showSuffixIcon;
  final double paddingHorizontal;
  final Color? hintColor;
  final Color? labelColor;
  final Color? textStyleColor;
  final void Function()? onTap;
  const TextFormWidget({
    Key? key,
    this.focusNode,
    this.showSuffixIcon = false,
    this.enabled = true,
    this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.formatters,
    this.obscureText = false,
    this.changeIsShowPassword,
    this.textAlign = TextAlign.left,
    this.textInputAction,
    this.helperText,
    this.maxLength,
    this.maxLines = 1,
    this.prefixIcon,
    this.suffixIcon = const Icon(
      Icons.info,
      color: Colors.red,
    ),
    this.paddingHorizontal = 0,
    this.hintColor,
    this.labelColor,
    this.textStyleColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      style: TextStyle(
        color: textStyleColor,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
      focusNode: focusNode,
      enabled: enabled,
      obscureText: obscureText,
      inputFormatters: formatters ?? [],
      validator: validator,
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      maxLength: maxLength ?? 200,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        iconColor: primaryDark,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(
            color: primaryDark,
            width: 2,
          ),
        ),
        suffixIcon: showSuffixIcon ? suffixIcon : null,
        focusColor: primaryDark,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIconColor:
            MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) {
            return primaryDark;
          }
          if (states.contains(MaterialState.error)) {
            return redDark;
          }
          return primaryDark;
        }),
        prefixIconColor:
            MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) {
            return primaryDark;
          }
          if (states.contains(MaterialState.error)) {
            return redDark;
          }
          return primaryDark;
        }),
        filled: true,
        //fillColor: Colors.white10, */
        labelText: labelText,
        counterText: '',
        hintText: hintText,
        helperText: helperText,
        hintStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: hintColor,
        ),
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: labelColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: primaryDark,
            width: 2,
          ),
        ),
      ),
    );
  }
}
