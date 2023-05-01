import 'package:flutter/material.dart';
import 'package:login_1/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return BackgroundScreen(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Image.asset(
                'assets/register_hojas.png',
                height: 300,
                width: size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            const AppBarPop(),
            Align(
              alignment: Alignment.center,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      const SizedBox(height: 40,),
                      const TitlteTextApp(title: 'Register'),
                      const TextApp(text: 'Create your account'),
                      const SizedBox(height: 30,),
                      const TextFormFieldDecoration(hintText: 'Username', prefixIcon: Icons.person),
                      const TextFormFieldDecoration(hintText: 'Email address', prefixIcon: Icons.email),
                      const TextFormFieldDecoration(hintText: 'Username', prefixIcon: Icons.lock),
                      const TextFormFieldDecoration(hintText: 'Username', prefixIcon: Icons.lock),
                      const SizedBox(height: 15,),
                      const TextApp1(title: 'By registering, your are agreeing to our', fontSize: 14, fontWeight: FontWeight.normal, textDecoration: TextDecoration.none),
                      const TextApp1(title: 'Term of use and Privacy Policy', fontSize: 14, fontWeight: FontWeight.normal, textDecoration: TextDecoration.none),
                      Expanded(child: Container()),
                      const ButtonNavigatorWidgets(
                        route: null,
                        title: 'REGISTER',
                        gradiendColorButton1: Color(0xFF253449),
                        gradiendColorButton2: Color(0xFF285CA3),
                        colorBorderButton: null,
                        colorBoxShadow: Colors.black38
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TextApp(text: "Dont't have an account? "),
                          const SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, 'login');
                            },
                            child: const TextApp1(
                              title: "Login",
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
                ),
              ),
            )
          ],
        )
      )
    );
  }
}

