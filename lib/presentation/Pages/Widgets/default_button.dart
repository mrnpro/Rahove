import 'package:flutter/material.dart';
import 'package:rahove/presentation/Themes/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.height = 55,
    this.width = 236,
    required this.btnTxt,
  }) : super(key: key);
  final double height;
  final double width;
  final String btnTxt;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Constants.kthridColor(),
        onTap: () {},
        borderRadius: BorderRadius.circular(26),
        child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              gradient: LinearGradient(
                colors: [
                  Constants.kprimaryColor(),
                  Constants.ksecondaryColor()
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Text(
                btnTxt,
                style: ThemeData()
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.white),
              ),
            )));
  }
}
