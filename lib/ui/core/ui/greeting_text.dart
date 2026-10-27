import 'package:flutter/material.dart';

class GreetingText extends StatelessWidget {
  const GreetingText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: TextAlign.center);
  }
}
