import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp/screens/register/components/body.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion(
        value: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        child: Scaffold(body: Body()));
  }
}
