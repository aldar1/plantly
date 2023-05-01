import 'package:flutter/material.dart';

// const Text('Remember me',style: TextStyle(fontSize: 12,letterSpacing: 0.3),),
class TextApp1 extends StatelessWidget {
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final TextDecoration textDecoration;
  const TextApp1({
    super.key,
    required this.title, 
    required this.fontSize, 
    required this.fontWeight, 
    required this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        letterSpacing: 0.3,
        fontWeight: fontWeight,
        decoration: textDecoration,
      ),
    );
  }
}
