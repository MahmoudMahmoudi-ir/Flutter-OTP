import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp/constants.dart';
import 'package:otp/screens/otp/components/body.dart';

class Otp extends StatelessWidget {
  final String phoneNumber;

  const Otp({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: blackTextColor,
            elevation: 0,
          ),
          body: Body(
            phoneNumber: phoneNumber,
          )),
    );
  }
}
