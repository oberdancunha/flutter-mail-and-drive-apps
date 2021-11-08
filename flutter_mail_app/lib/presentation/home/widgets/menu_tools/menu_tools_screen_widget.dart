import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import 'menu_tools_list_widget.dart';

class MenuToolsScreenWidget extends StatelessWidget {
  const MenuToolsScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Positioned.fill(
            left: 80,
            right: 1,
            child: RouterOutlet(),
          ),
          const MenuToolsListWidget(),
        ],
      );
}
