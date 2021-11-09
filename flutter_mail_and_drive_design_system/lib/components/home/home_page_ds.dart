import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_core/models/menu_tools_list_model.dart';

import '../logo/logo_ds.dart';
import '../menu_tools/menu_tools_ds.dart';

class HomePageDS extends StatelessWidget {
  final String image;
  final String initialPage;
  final List<MenuToolsListModel> menuToolsItems;
  final bool showCreate;
  final Widget? createWidget;

  const HomePageDS({
    required this.image,
    required this.initialPage,
    required this.menuToolsItems,
    required this.showCreate,
    this.createWidget,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            MenuToolsDS(
              initialPage: initialPage,
              showCreate: showCreate,
              createWidget: createWidget,
              menuToolsItems: menuToolsItems,
            ),
            Positioned(
              left: 15,
              child: SizedBox(
                height: 50,
                child: LogoDS(
                  image: image,
                ),
              ),
            ),
          ],
        ),
      );
}
