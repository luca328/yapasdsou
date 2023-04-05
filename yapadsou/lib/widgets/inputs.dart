import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  const Inputs({
    super.key,
    required this.inputKey,
    required this.inputText,
    this.obscured = false,
    required this.controller,
    required this.passwordController,
  });
  
  final String inputKey;
  final String inputText;
  final bool obscured;
  final TextEditingController controller;
  final TextEditingController passwordController;
  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  late bool _isObscured;
  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscured;
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        if(value != widget.passwordController.text && widget.passwordController.text.isNotEmpty) {
          return "The two passwords don't match";
        }
        if(widget.inputKey == 'email' && value.isNotEmpty){
          RegExp exp = RegExp(r"[\w-.]+@([\w-]+\.)+[\w-]{2,4}");
          if(!exp.hasMatch(value)){
            return 'Please enter a valid email';
          }
        }
        if(widget.inputKey == 'password' && value.isNotEmpty){
          RegExp exp = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~?'\-_><]).{8,}$");
          if(!exp.hasMatch(value)){
            return 'Le mot de passe doit contenir: un chiffre\nune majuscule et minuscule, un caractère spécial\net faire plus de 8 caractères';
          }
        }
        return null;
      },
      key: Key(widget.inputKey),
      obscureText: _isObscured,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        labelText: widget.inputText,
        suffix: widget.obscured ? IconButton(
          padding: const EdgeInsets.all(0),
          iconSize: 20.0,
          icon: _isObscured? const Icon(
            Icons.visibility_off,
            color: Colors.grey,
          )
          : const Icon(
            Icons.visibility,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
        ) : null,
      ),
    );
  }
}
