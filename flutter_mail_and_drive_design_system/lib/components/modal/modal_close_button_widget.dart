import 'package:flutter/material.dart';

class ModalCloseButtonWidget extends StatelessWidget {
  const ModalCloseButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        child: const Center(
          child: Icon(
            Icons.close,
            size: 35,
          ),
        ),
        onTap: () => Navigator.pop(context),
      );
}
