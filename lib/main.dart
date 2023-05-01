import 'package:flutter/material.dart';
import 'package:login_1/router/app_route.dart';
import 'package:login_1/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login_1',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      initialRoute: AppRoute.initialRoute,
      routes: AppRoute.routes
    );
  }
}
