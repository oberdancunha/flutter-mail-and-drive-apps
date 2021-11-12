import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_core/models/menu_tools_list_model.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../modal/show_modal_bottom_sheet_ds.dart';
import 'menu_tools_item_ds.dart';

class MenuToolsListDS extends StatefulWidget {
  final String initialPage;
  final List<MenuToolsListModel> menuToolsItems;
  final bool showCreate;
  final Widget? createWidget;

  const MenuToolsListDS({
    required this.initialPage,
    required this.menuToolsItems,
    required this.showCreate,
    this.createWidget,
    Key? key,
  }) : super(key: key);

  @override
  State<MenuToolsListDS> createState() => _MenuToolsListDSState();
}

class _MenuToolsListDSState extends State<MenuToolsListDS> {
  late bool _menuOpened;
  late String _basePath;

  @override
  void initState() {
    super.initState();
    _basePath = Modular.to.path;
    Future.delayed(const Duration(milliseconds: 500), () {
      Modular.to.navigate('$_basePath${widget.initialPage}/');
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
          ? MediaQuery.of(context).size.width - 200
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
                      if (widget.showCreate)
                        Column(
                          children: [
                            const SizedBox(height: 20),
                            GestureDetector(
                              child: const Icon(
                                Icons.add,
                                size: 50,
                              ),
                              onTap: () => showModalBottomSheetDS(
                                context: context,
                                widget: widget.createWidget!,
                              ),
                            ),
                          ],
                        )
                      else
                        const SizedBox.shrink(),
                      for (var menuToolsItem in widget.menuToolsItems)
                        Column(
                          children: [
                            const SizedBox(height: 20),
                            MenuToolsItemDS(
                              path: '$_basePath${menuToolsItem.path}/',
                              iconData: menuToolsItem.iconData,
                              label: menuToolsItem.label,
                              menuOpened: _menuOpened,
                              currentPath: Modular.to.path,
                            ),
                          ],
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
