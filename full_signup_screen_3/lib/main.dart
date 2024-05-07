import 'package:flutter/material.dart';
import 'reset_password_screen.dart';
import 'forget_password_screen.dart';
import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SIGNUP',
      home: ResetPasswordScreen(),
    );
  }
}