import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.inputKey,
    required this.inputText,
  });

  final String inputKey;
  final String inputText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        key: Key(inputKey),
        decoration: InputDecoration(
          prefixIcon: IconButton(
            padding: const EdgeInsets.all(0),
            iconSize: 20.0,
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          labelText: inputText,
          filled: true,
          fillColor: CustomColors.brokenWhite,
        ));
  }
}
