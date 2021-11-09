import 'package:flutter/material.dart';

class AppTemplateDS extends StatelessWidget {
  final Widget searchWidget;
  final Widget appWidget;

  const AppTemplateDS({
    required this.searchWidget,
    required this.appWidget,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Positioned(
            left: MediaQuery.of(context).size.width * 0.3 - 50,
            right: 1,
            child: searchWidget,
          ),
          Positioned(
            top: 70,
            bottom: 1,
            right: 1,
            left: 1,
            child: appWidget,
          ),
        ],
      );
}
