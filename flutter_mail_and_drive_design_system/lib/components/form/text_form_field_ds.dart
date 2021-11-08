import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldDS extends StatelessWidget {
  final String labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? validator;
  final bool autoCorrect;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final bool enabled;
  final double height;
  final double horizontalPadding;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? errorBorder;

  const TextFormFieldDS({
    required this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.autoCorrect = false,
    this.onChanged,
    this.controller,
    this.textInputType = TextInputType.text,
    this.enabled = true,
    this.height = 20,
    this.horizontalPadding = 5,
    this.border,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.errorBorder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: controller,
        obscureText: obscureText,
        autocorrect: autoCorrect,
        keyboardType: textInputType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          border: border,
          focusedBorder: focusedBorder,
          focusedErrorBorder: focusedErrorBorder,
          errorBorder: errorBorder,
          labelText: labelText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.symmetric(vertical: height, horizontal: horizontalPadding),
        ),
        validator: (_) => validator,
        onChanged: onChanged,
        enabled: enabled,
      );
}
