import 'package:flutter/material.dart';
import 'package:login_1/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundScreen(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Column(
          children: [
            const _ImageLoginScreen(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: const [
                  TitlteTextApp(title: 'Welcome Back'),
                  TextApp(text: 'Login to your account'),
                  SizedBox(height: 40,),
                  TextFormFieldDecoration(hintText: 'Username',prefixIcon: Icons.person),
                  TextFormFieldDecoration(hintText: 'Password',prefixIcon: Icons.lock),
                  _WidgetRememberForgotPassword(),
                ],
              ),
            ),
            Expanded(child: Container()),
            const ButtonNavigatorWidgets(
              route: null,
              title: 'LOGIN',
              gradiendColorButton1: Color(0xFF253449),
              gradiendColorButton2: Color(0xFF285CA3),
              colorBorderButton: null,
              colorBoxShadow: Colors.black38,
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextApp(text: "Dont't have an account? "),
                const SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'register');
                  },
                  child: const TextApp1(
                    title: "Sign up",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    textDecoration: TextDecoration.underline,
                  )
                ),
              ],
            ),
            const SizedBox(height: 50,)
          ],
        ),
      )
    );
  }
}

class _WidgetRememberForgotPassword extends StatelessWidget {
  const _WidgetRememberForgotPassword();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true, 
          activeColor: Colors.white,
          checkColor: const Color(0xFF285CA3),
          onChanged: (value){}
        ),
        const TextApp1(title: "Remember me",fontSize: 12,fontWeight: FontWeight.normal,textDecoration: TextDecoration.none,),
        Expanded(child: Container()),
        const TextApp1(title: "Forgot Password?",fontSize: 13,fontWeight: FontWeight.w500,textDecoration: TextDecoration.none,),
      ],
    );
  }
}

class _ImageLoginScreen extends StatelessWidget {
  const _ImageLoginScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.elliptical(700, 270),
          bottomRight: Radius.elliptical(700, 270),
        ),
        border: Border.all(color: Colors.black,),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 10,
            color: Colors.black38
          )
        ],
        image: const DecorationImage(
          image: AssetImage('assets/welcome.png'),
          fit: BoxFit.fill
        )
      ),
    );
  }
}

