import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/modal/show_modal_bottom_sheet_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../send/send_module.dart';
import 'menu_tools_item_widget.dart';

class MenuToolsListWidget extends StatefulWidget {
  const MenuToolsListWidget({Key? key}) : super(key: key);

  @override
  State<MenuToolsListWidget> createState() => _MenuToolsListWidgetState();
}

class _MenuToolsListWidgetState extends State<MenuToolsListWidget> {
  late bool _menuOpened;
  late String _basePath;

  @override
  void initState() {
    super.initState();
    _basePath = Modular.to.path;
    Future.delayed(const Duration(milliseconds: 500), () {
      Modular.to.navigate('${_basePath}mail/');
    });
    _menuOpened = false;
  }

  @override
  Widget build(BuildContext context) {
    var toolBarAdjustSize = (MediaQuery.of(context).viewPadding.left > 0
            ? MediaQuery.of(context).viewPadding.left
            : MediaQuery.of(context).viewPadding.right) /
        1.5;
    toolBarAdjustSize = toolBarAdjustSize == 0 ? toolBarAdjustSize : toolBarAdjustSize - 1;

    return Positioned.fill(
      top: 70,
      left: 1,
      right: _menuOpened
          ? MediaQuery.of(context).size.width - 190
          : MediaQuery.of(context).size.width - (toolBarAdjustSize + 97),
      child: Container(
        color: Theme.of(context).dialogTheme.backgroundColor,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: NavigationListener(
                  builder: (context, child) => Column(
                    children: [
                      const SizedBox(height: 10),
                      GestureDetector(
                        child: const Icon(
                          Icons.add,
                          size: 50,
                        ),
                        onTap: () => showModalBottomSheetDS(
                          context: context,
                          widget: SendModule(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      MenuToolsItemWidget(
                        path: '${_basePath}mail/',
                        iconData: Icons.inbox,
                        label: 'Inbox',
                        menuOpened: _menuOpened,
                        currentPath: Modular.to.path,
                      ),
                      const SizedBox(height: 20),
                      MenuToolsItemWidget(
                        path: '${_basePath}sent/',
                        iconData: Icons.send,
                        label: 'Enviados',
                        menuOpened: _menuOpened,
                        currentPath: Modular.to.path,
                      ),
                      const SizedBox(height: 20),
                      MenuToolsItemWidget(
                        label: 'Rascunho',
                        iconData: Icons.drafts,
                        path: '${_basePath}draft/',
                        menuOpened: _menuOpened,
                        currentPath: Modular.to.path,
                      ),
                      const SizedBox(height: 20),
                      MenuToolsItemWidget(
                        iconData: Icons.restore_from_trash_sharp,
                        label: 'Lixeira',
                        path: '${_basePath}trash/',
                        menuOpened: _menuOpened,
                        currentPath: Modular.to.path,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: -13,
              right: -11,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _menuOpened = !_menuOpened;
                  });
                },
                icon: const Icon(Icons.menu),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
