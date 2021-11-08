import 'package:flutter/material.dart';

class ButtonDS extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final bool enabled;

  const ButtonDS({
    required this.label,
    required this.onPressed,
    this.enabled = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle().copyWith(
          backgroundColor: enabled
              ? Theme.of(context).elevatedButtonTheme.style!.backgroundColor
              : Theme.of(context).elevatedButtonTheme.style!.overlayColor,
        ),
        child: Center(
          child: Text(label),
        ),
      );
}
