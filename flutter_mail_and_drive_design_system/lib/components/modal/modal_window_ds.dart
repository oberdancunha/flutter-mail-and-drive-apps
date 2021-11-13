import 'package:flutter/material.dart';
import 'modal_header_widget.dart';

class ModalWindowDS extends StatelessWidget {
  final String title;
  final Widget child;
  final double? height;

  const ModalWindowDS({
    required this.title,
    required this.child,
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: height ?? MediaQuery.of(context).size.height * 0.7,
        child: Column(
          children: [
            ModalHeaderWidget(title: title),
            Expanded(child: child),
          ],
        ),
      );
}
