import 'package:flutter/material.dart';

class MainHeaderLogoPortraitDS extends StatelessWidget {
  const MainHeaderLogoPortraitDS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'packages/flutter_mail_and_drive_design_system/assets/images/main_header.png',
            ),
          ),
        ),
      );
}
