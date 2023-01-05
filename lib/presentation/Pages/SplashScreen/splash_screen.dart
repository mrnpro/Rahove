import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rahove/presentation/Blocs/SplashLogic/splash_cubit.dart';
import 'package:rahove/presentation/Pages/Login/login_screen.dart';
import 'package:rahove/presentation/Pages/SplashScreen/Components/splash_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String route = "/splashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashCubit _splashCubit;

  @override
  void initState() {
    _splashCubit = SplashCubit();
    _splashCubit.startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: _splashCubit,
        child: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state is SplashTimerEnded) {
              Navigator.pushNamedAndRemoveUntil(
                  context, LoginScreen.route, (route) => false);
            }
          },
          child: const SplashBody(),
        ),
      ),
    );
  }
}
