import 'package:flutter/material.dart';

class TitlteTextApp extends StatelessWidget {
  final String title;

  const TitlteTextApp({
    super.key, 
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,bottom: 15),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 45,
          fontWeight: FontWeight.w500,
          letterSpacing: 1
        ),
      ),
    );
  }
}
