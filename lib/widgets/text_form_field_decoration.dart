import 'package:flutter/material.dart';

class TextFormFieldDecoration extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  
  const TextFormFieldDecoration({
    super.key, 
    required this.hintText, 
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFC6CEF1),
                Color(0xFF8D9CE4),
              ],
            ),
          ),
          child: TextFormField(
            cursorColor: const Color(0xFF285CA3),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 17),
              prefixIcon: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  prefixIcon,
                  color: const Color(0xFF285CA3),
                  size: 25,
                ),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Color(0xFF285CA3),
                fontWeight: FontWeight.w500,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
