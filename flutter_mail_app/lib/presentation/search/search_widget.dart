import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/form/text_form_field_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';
import '../../application/mail/mail_store.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final _mailStore = Modular.get<MailStore>();
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) => TextFormFieldDS(
        labelText: 'Pesquisar',
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear_rounded),
          onPressed: () {
            _controller.clear();
            _mailStore.search();
          },
          iconSize: 30,
        ),
        height: 1,
        controller: _controller,
        horizontalPadding: 15,
        onChanged: (term) => EasyDebounce.debounce(
          'search',
          const Duration(milliseconds: 500),
          () => _mailStore.search(
            term: term.toLowerCase(),
          ),
        ),
      );
}
