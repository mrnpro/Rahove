import 'package:flutter/material.dart';
import 'package:rahove/presentation/Pages/Register/components/register_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static const String route = "/registerScreen";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: RegisterBody(),
      ),
    );
  }
}
