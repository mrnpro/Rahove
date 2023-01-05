import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rahove/presentation/SizeConfig/size_config.dart';

import '../../../Themes/constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 39),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              Constants.emailTxt(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          addVerticalSpace(),
          SizedBox(
              height: 51,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
              )),
          addVerticalSpace(size: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              Constants.passwordTxt(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          addVerticalSpace(),
          SizedBox(
            height: 51,
            child: TextFormField(
              obscureText: true,
            ),
          ),
          addVerticalSpace(size: 9.06),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(Constants.forgetPasswordTxt(),
                  style: const TextStyle(fontSize: 12))),
        ],
      ),
    ));
  }
}
