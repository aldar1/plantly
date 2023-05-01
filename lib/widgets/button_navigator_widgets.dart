import 'package:flutter/material.dart';

class ButtonNavigatorWidgets extends StatelessWidget {
  final String title;
  final Color gradiendColorButton1;
  final Color gradiendColorButton2;
  final Color? colorBorderButton;
  final Color colorBoxShadow;
  final String? route;

  const ButtonNavigatorWidgets({
    super.key,
    required this.title,
    this.route,
    required this.colorBoxShadow,
    required this.gradiendColorButton1,
    required this.gradiendColorButton2,
    required this.colorBorderButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 0),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        border: colorBorderButton == null
            ? null
            : Border.all(
                width: 2,
                color: colorBorderButton!,
              ),
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [gradiendColorButton1, gradiendColorButton2],
          stops: const [
            0.25,
            1,
          ],
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(10, 10),
            blurRadius: 10,
            color: colorBoxShadow,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {
          if(route != null){
            Navigator.pushNamed(context, route!);
          }
        },
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ),
    );
  }
}
