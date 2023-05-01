import 'package:flutter/material.dart';
import 'package:login_1/widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundScreen(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: const [
              SizedBox(height: 20),
              Image(
                image: AssetImage('assets/image_01.png'),
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              TitlteTextApp(title: 'Plantly'),
              TextApp(text: "Can't seem to keep a plant alive?"),
              TextApp(text: "Let Us help your Change that"),
              ButtonNavigatorWidgets(
                route: 'login',
                title: 'LOGIN',
                gradiendColorButton1: Color(0xFF253449),
                gradiendColorButton2: Color(0xFF285CA3),
                colorBorderButton: null,
                colorBoxShadow: Colors.black38
              ),
              ButtonNavigatorWidgets(
                route: 'register',
                title: 'SIGN UP',
                gradiendColorButton1: Colors.transparent,
                gradiendColorButton2: Colors.transparent,
                colorBorderButton: Colors.black,
                colorBoxShadow: Colors.transparent, 
              )
            ],
          ),
        ),
      ),
    );
  }
}


