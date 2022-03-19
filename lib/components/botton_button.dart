import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottonButtom extends StatelessWidget {
  const BottonButtom({
    Key? key,
    this.onTap,
    required this.buttonTitle,
  }) : super(key: key);
  final Function()? onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtomTextstyle,
          ),
        ),
        margin: const EdgeInsets.only(top: 10.0),
        color: bottomContainerColor,
        // height: kBottomContainerHeight,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
      ),
    );
  }
}
