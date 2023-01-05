import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rahove/presentation/Pages/Register/register_screen.dart';
import 'package:rahove/presentation/Pages/Widgets/horizontal_line.dart';
import 'package:rahove/presentation/Pages/Login/components/login_form.dart';
import 'package:rahove/presentation/Pages/Widgets/default_button.dart';
import 'package:rahove/presentation/SizeConfig/size_config.dart';
import 'package:rahove/presentation/Themes/constants.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          addVerticalSpace(size: 73),
          Align(
            alignment: Alignment.center,
            child: Text(
              Constants.getStartedTxt(),
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
          const LoginForm(),
          addVerticalSpace(size: 47.5),
          DefaultButton(btnTxt: Constants.loginTxt()),
          addVerticalSpace(size: 82.44),
          HorizontalOrLine(label: Constants.loginWithTxt(), height: 2),
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
                  Navigator.pushNamed(context, RegisterScreen.route);
                },
                child: Text(Constants.signUpTxt(),
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
