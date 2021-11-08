import 'package:flutter/material.dart';

class MailDetailsContentWidget extends StatelessWidget {
  final String content;

  const MailDetailsContentWidget({
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(content);
}
