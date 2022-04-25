import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class TextFieldPinCode extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String) onCompleted;
  const TextFieldPinCode({ Key? key, required this.controller, required this.onCompleted }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
                appContext: context,
                pastedTextStyle: const TextStyle(
                  color: Color(0xFFDBDBDB),
                  fontWeight: FontWeight.bold,
                ),
                length: 5,
                autoFocus: true,
                animationType: AnimationType.fade,
                mainAxisAlignment: MainAxisAlignment.center,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    fieldOuterPadding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 40,
                    fieldWidth: 32,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    inactiveColor: const Color(0xFFDBDBDB),
                    activeColor: const Color(0xFFDBDBDB),
                    borderWidth: 1.5),
                cursorColor: const Color(0xFF37A9F0),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                controller: controller,
                keyboardType: TextInputType.number,
                onCompleted: onCompleted,
                onChanged: (value) {},
              );
  }
}