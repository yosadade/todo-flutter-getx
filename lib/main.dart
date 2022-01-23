import 'package:flutter/material.dart';
import 'package:todo/pages/dashboard_page.dart';
import 'package:todo/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/dashboard': (context) => const DashbboardPage(),
      },
    );
  }
}
