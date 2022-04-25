import 'package:flutter/material.dart';
import 'package:otp/constants.dart';


class Button extends StatelessWidget {
  final Function() onPressed;
  final TextEditingController controller;

  const Button({Key? key, required this.onPressed, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: controller.text.length == 13
                ? blueButtonColor
                : greyButtonColor,
            elevation: 0,
            shadowColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        child: Text(
          'ارسال',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button!.apply(
                color: controller.text.length == 13
                    ? Colors.white
                    : greyBorderColor,
              ),
        ),
      ),
    );
  }
}
