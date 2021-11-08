import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

class LoadingTextShimmerDS extends StatelessWidget {
  const LoadingTextShimmerDS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.primary,
        highlightColor: Theme.of(context).secondaryHeaderColor,
        period: const Duration(milliseconds: 500),
        child: Text(
          'Carregando...',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.1,
          ),
        ),
      );
}
