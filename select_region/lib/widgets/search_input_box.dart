import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SearchInputBox extends StatefulWidget {
  SearchInputBox({
    Key? key,
    required this.textController,
    required this.label,
    required this.callBack,
    required this.itemBuilder,
    required this.onSelect,
    required this.validator,
    double? width,
    double? height,
  })  : this.height = height ?? 60.0,
        this.width = width ?? 200.0,
        super(key: key);

  final TextEditingController textController;
  final String label;
  final FutureOr<Iterable<dynamic>> Function(String) callBack;
  final Widget Function(BuildContext, dynamic) itemBuilder;
  final Function(dynamic) onSelect;
  final String? Function(String?)? validator;
  final double? width;
  final double? height;

  @override
  _SearchInputBoxState createState() => _SearchInputBoxState();
}

class _SearchInputBoxState extends State<SearchInputBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: TypeAheadFormField(
        textFieldConfiguration: TextFieldConfiguration(
          decoration: InputDecoration(labelText: widget.label),
          controller: widget.textController,
        ),
        suggestionsCallback: widget.callBack,
        itemBuilder: widget.itemBuilder,
        transitionBuilder: (context, suggestionsBox, controller) {
          return suggestionsBox;
        },
        onSuggestionSelected: widget.onSelect,
        validator: widget.validator,
      ),
    );
  }
}
