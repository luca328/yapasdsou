import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  const Inputs({
    super.key,
    required this.inputKey,
    required this.inputText,
  });

  final String inputKey;
  final String inputText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      key: Key(inputKey),
      obscureText: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        labelText: inputText,
      ),
    );
  }
}
