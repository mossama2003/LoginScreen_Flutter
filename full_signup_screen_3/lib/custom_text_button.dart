import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.buttonName,
    required this.textFontSize,
    required this.textFontFamily,
    required this.textFontWeight,
    required this.height,
    required this.minWidth,
    required this.onTop,
    required this.tColor,
    this.buttonBorderRadius,
    this.bgColor,
    this.iconShape,
  });

  final String buttonName;
  final String textFontFamily;
  final double textFontSize;
  final double height;
  final double minWidth;
  final FontWeight textFontWeight;
  final Color? bgColor;
  final Color? tColor;
  final IconData? iconShape;
  final double? buttonBorderRadius;
  final Function() onTop;

  // final LinearGradient? linearGradient;
  // );

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTop,
      minWidth: minWidth,
      height: height,
      color: bgColor,
      textColor: tColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(buttonBorderRadius!),
        ),
      ),
      child: Text(buttonName,
        style: TextStyle(
          fontSize: textFontSize,
          fontFamily: textFontFamily,
          fontWeight: textFontWeight,
        ),
      ),
      // child: IconButton(
      //   icon: Icon(iconShape),
      //   onPressed: () {
      //     print('dress button');
      //   },
      // ),
    );
  }
}
