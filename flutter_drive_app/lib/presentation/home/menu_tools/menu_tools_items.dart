import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_core/models/menu_tools_list_model.dart';

final menuToolsItems = [
  const MenuToolsListModel(
    path: 'drive',
    iconData: Icons.storage,
    label: 'Meu drive',
  ),
  const MenuToolsListModel(
    path: 'shared',
    iconData: Icons.share_rounded,
    label: 'Compartilhados',
  ),
  const MenuToolsListModel(
    path: 'recent',
    iconData: Icons.access_time,
    label: 'Recentes',
  ),
  const MenuToolsListModel(
    path: 'trash',
    iconData: Icons.restore_from_trash_sharp,
    label: 'Lixeira',
  ),
];
