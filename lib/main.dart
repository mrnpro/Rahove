import 'package:flutter/material.dart';
import 'package:rahove/presentation/Pages/SplashScreen/splash_screen.dart';
import 'package:rahove/presentation/Router/route.dart';
import 'package:rahove/presentation/Themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rahov Demo',
      theme: lightTheme,
      themeMode: ThemeMode.light,
      onGenerateRoute: GenerateRoute.generate,
      initialRoute: SplashScreen.route,
    );
  }
}
