import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rahove/presentation/Themes/constants.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        Constants.appNameTXT(),
        style: TextStyle(
            fontSize: 44.58,
            fontWeight: FontWeight.bold,
            color: Constants.kprimaryColor()),
      ),
    );
  }
}
