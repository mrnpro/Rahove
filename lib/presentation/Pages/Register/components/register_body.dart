import 'package:flutter/material.dart';
import 'package:rahove/presentation/Pages/Login/login_screen.dart';
import 'package:rahove/presentation/Pages/Widgets/default_button.dart';

import '../../../SizeConfig/size_config.dart';
import '../../../Themes/constants.dart';
import '../../Widgets/horizontal_line.dart';
import 'register_form.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          addVerticalSpace(size: 73),
          Align(
            alignment: Alignment.center,
            child: Text(
              Constants.welcomeText(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Constants.kprimaryColor()),
            ),
          ),
          addVerticalSpace(size: 24),
          Align(
            alignment: Alignment.center,
            child: Text(Constants.becomeMemberTxt()),
          ),
          addVerticalSpace(size: 37),
          const RegisterForm(),
          addVerticalSpace(size: 47.5),
          DefaultButton(btnTxt: Constants.signUpTxt()),
          addVerticalSpace(size: 82.44),
          HorizontalOrLine(label: Constants.signUpWithTxt(), height: 2),
          addVerticalSpace(size: 39),
          const SocialMediaLoginButtons(),
          addVerticalSpace(size: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Constants.dontHaveAccountTxt(),
                  style: const TextStyle(fontSize: 12)),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.route);
                },
                child: Text(Constants.loginTxt(),
                    style: const TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialMediaLoginButtons extends StatelessWidget {
  const SocialMediaLoginButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CircleAvatar(
            radius: 13,
            backgroundImage: AssetImage("assets/images/google.png"),
          ),
          CircleAvatar(
            radius: 13,
            backgroundImage: AssetImage("assets/images/facebook.png"),
          ),
          CircleAvatar(
            radius: 13,
            backgroundImage: AssetImage("assets/images/apple.png"),
          )
        ],
      ),
    );
  }
}
