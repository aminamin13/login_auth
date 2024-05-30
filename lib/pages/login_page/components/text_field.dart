import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  TextFields({
    super.key,
    required this.hint,
    required this.controller,
  });

  final String hint;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        filled: true,
        fillColor: Theme.of(context).colorScheme.tertiary,
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
    );
  }
}
