import 'package:flutter/material.dart';

import '../form/text_form_field_ds.dart';

class SearchDS extends StatelessWidget {
  final TextEditingController controller;
  final Function() onSearchClearPressed;
  final Function(String term) onChanged;

  const SearchDS({
    required this.controller,
    required this.onSearchClearPressed,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormFieldDS(
        labelText: 'Pesquisar',
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear_rounded),
          onPressed: onSearchClearPressed,
          iconSize: 30,
        ),
        height: 1,
        controller: controller,
        horizontalPadding: 15,
        onChanged: onChanged,
      );
}
