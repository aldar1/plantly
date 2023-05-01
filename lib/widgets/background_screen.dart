import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  final Widget child;
  const BackgroundScreen({
    super.key, 
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [
            0.3,
            0.5,
            0.7,
          ],
          colors: [
            const Color(0xFF285CA3),
            const Color(0xFF576CD6).withOpacity(0.9),
            const Color(0xFF285CA3),
          ]
        )
      ),
      child: child,
    );
  }
}
