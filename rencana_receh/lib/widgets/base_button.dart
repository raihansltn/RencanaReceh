import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget{
BaseButton(
  {
    Key?key,
    required this.text,
    this.onPressed,
    this.buttonStyle,
    this.buttonTextSty1e,
    this.isDisabled,
    this.height,
    this.width,
    this.margin,
    this.alignment, TextStyle? buttonTextStyle
  }
)
: super(key: key,);

final String text;
final VoidCallback? onPressed;
final ButtonStyle? buttonStyle;
final TextStyle? buttonTextSty1e;
final bool? isDisabled;
final double? height;
final double? width;
final EdgeInsets? margin;
final Alignment? alignment;

@override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}