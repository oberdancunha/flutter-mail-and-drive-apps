import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/search/search_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/drive/drive_store.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final _driveStore = Modular.get<DriveStore>();
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) => SearchDS(
        onSearchClearPressed: () {
          _controller.clear();
          _driveStore.search();
        },
        controller: _controller,
        onChanged: (term) => EasyDebounce.debounce(
          'search',
          const Duration(milliseconds: 500),
          () => _driveStore.search(
            term: term.toLowerCase(),
          ),
        ),
      );
}
