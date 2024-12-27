import 'package:flutter/material.dart';

class MyTextfiled extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final Icon icon;
  final String text;

  const MyTextfiled({
    required this.controller,
    required this.focusNode,
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: Colors.white,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: text,
        ),
      ),
    );
  }
}
