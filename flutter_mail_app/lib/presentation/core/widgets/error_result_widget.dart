import 'package:flutter/material.dart';

class ErrorResultWidget extends StatelessWidget {
  const ErrorResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error,
              size: MediaQuery.of(context).size.width * 0.08,
            ),
            const SizedBox(width: 10),
            Text(
              'Ocorreu um erro ao obter o resultado',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.035,
              ),
            ),
          ],
        ),
      );
}
