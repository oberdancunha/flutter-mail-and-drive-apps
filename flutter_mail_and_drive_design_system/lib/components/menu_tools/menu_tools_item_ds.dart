import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_core/functions/screen.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

class MenuToolsItemDS extends StatelessWidget {
  final String path;
  final IconData iconData;
  final String label;
  final bool menuOpened;
  final String currentPath;

  const MenuToolsItemDS({
    required this.path,
    required this.iconData,
    required this.label,
    required this.menuOpened,
    required this.currentPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemColor = currentPath.endsWith(path)
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).primaryIconTheme.color!;

    return GestureDetector(
      onTap: () {
        Modular.to.navigate(path);
      },
      child: Row(
        children: [
          _buildIcon(context, iconData, itemColor),
          const SizedBox(width: 10),
          _buildText(context, label, itemColor),
        ],
      ),
    );
  }

  Icon _buildIcon(
    BuildContext context,
    IconData iconData,
    Color color,
  ) =>
      Icon(
        iconData,
        color: color,
        size: 30,
      );

  Text _buildText(
    BuildContext context,
    String label,
    Color color,
  ) =>
      Text(
        menuOpened ? label : '',
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: isPortraitOrBigHeightLandscape(context)
              ? 14
              : menuOpened && label.length <= 11
                  ? 14
                  : 11,
        ),
      );
}
