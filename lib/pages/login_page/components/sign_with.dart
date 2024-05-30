import 'package:flutter/material.dart';

class SignWith extends StatelessWidget {
  SignWith({super.key, required this.imagePath, required this.onTap});

  final String imagePath;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiary,
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Image(image: AssetImage(imagePath), height: 30),
        ),
      ),
    );
  }
}
