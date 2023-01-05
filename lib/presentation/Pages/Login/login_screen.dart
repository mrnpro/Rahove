import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rahove/presentation/Pages/Login/components/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String route = "/login";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LoginBody(),
      ),
    );
  }
}
