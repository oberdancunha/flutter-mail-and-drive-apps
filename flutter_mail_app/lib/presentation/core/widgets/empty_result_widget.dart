import 'package:flutter/material.dart';

class EmptyResultWidget extends StatelessWidget {
  const EmptyResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.warning_rounded,
              size: MediaQuery.of(context).size.width * 0.08,
            ),
            const SizedBox(width: 10),
            Text(
              'Nenhum resultado encontrado',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
          ],
        ),
      );
}
