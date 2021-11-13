import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_core/models/menu_tools_list_model.dart';

final menuToolsItems = [
  const MenuToolsListModel(
    path: 'mail',
    iconData: Icons.inbox,
    label: 'Meus emails',
  ),
  const MenuToolsListModel(
    path: 'sent',
    iconData: Icons.send,
    label: 'Enviados',
  ),
  const MenuToolsListModel(
    path: 'draft',
    iconData: Icons.drafts,
    label: 'Rascunho',
  ),
  const MenuToolsListModel(
    path: 'trash',
    iconData: Icons.restore_from_trash_sharp,
    label: 'Lixeira',
  ),
];
