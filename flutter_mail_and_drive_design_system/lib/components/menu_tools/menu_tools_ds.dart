import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_core/models/menu_tools_list_model.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import 'menu_tools_list_ds.dart';

class MenuToolsDS extends StatelessWidget {
  final String initialPage;
  final List<MenuToolsListModel> menuToolsItems;
  final bool showCreate;
  final Widget? createWidget;

  const MenuToolsDS({
    required this.initialPage,
    required this.menuToolsItems,
    required this.showCreate,
    this.createWidget,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Positioned.fill(
            left: 80,
            right: 1,
            child: RouterOutlet(),
          ),
          MenuToolsListDS(
            initialPage: initialPage,
            menuToolsItems: menuToolsItems,
            showCreate: showCreate,
            createWidget: createWidget,
          ),
        ],
      );
}
