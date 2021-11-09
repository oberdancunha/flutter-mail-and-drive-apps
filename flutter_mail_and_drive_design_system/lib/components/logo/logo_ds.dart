import 'package:flutter/material.dart';

class LogoDS extends StatelessWidget {
  final String image;

  const LogoDS({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.3,
        child: Image.asset(image),
      );
}
