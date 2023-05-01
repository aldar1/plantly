import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  final String text;
  const TextApp({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
