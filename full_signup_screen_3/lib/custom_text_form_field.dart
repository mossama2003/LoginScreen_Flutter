import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.textColor,
    required this.formBorderRadius,
    required this.textHPadding,
    required this.textVPadding,
    this.secureText = false,
    this.prefix,
    this.prefixIconColor,
    this.suffix,
    this.suffixIconColor,
    this.fillColor,
    this.isFilled,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
  });

  final String hint;
  final String? fontFamily;
  final bool secureText;
  final bool? isFilled;
  final double? fontSize;
  final double textHPadding;
  final double textVPadding;
  final double formBorderRadius;
  final Color? fillColor;
  final Color textColor;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final Widget? prefix;
  final Widget? suffix;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secureText,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: isFilled,
        prefixIcon: prefix,
        prefixIconColor: prefixIconColor,
        suffixIcon: suffix,
        suffixIconColor: suffixIconColor,
        contentPadding: EdgeInsets.symmetric(horizontal: textHPadding, vertical: textVPadding),
        // label: const Icon(Icons.verified_user_outlined),
        // labelText: 'Username',

        // labelStyle: const TextStyle(
        //   fontWeight: FontWeight.w500,
        //   fontSize: 20,
        //   color: Color(0xFF6B6B6B),
        // ),
        hintText: hint,
        hintStyle: TextStyle(
          color: textColor,
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(formBorderRadius),
          ),
        ),
        //-----
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(formBorderRadius),
          ),
        ),
        //-----
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFF3461FD),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(formBorderRadius),
          ),
        ),
        //-----
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(formBorderRadius),
          ),
        ),
        //-----
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(formBorderRadius),
          ),
        ),
        //-----
      ),
    );
  }
}
