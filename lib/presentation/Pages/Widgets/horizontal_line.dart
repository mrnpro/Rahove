import 'package:flutter/material.dart';
import 'package:rahove/presentation/Themes/constants.dart';

class HorizontalOrLine extends StatelessWidget {
  const HorizontalOrLine({
    required this.label,
    required this.height,
  });

  final String label;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 15.0),
            child: Divider(
              color: const Color(0xFF858585),
              height: height,
            )),
      ),
      Text(
        label,
        style: const TextStyle(
          color: const Color(0xFF858585),
        ),
      ),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: Divider(
              color: const Color(0xFF858585),
              height: height,
            )),
      ),
    ]);
  }
}
