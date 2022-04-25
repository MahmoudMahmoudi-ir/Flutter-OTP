import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otp/screens/components/text.dart';
import 'package:otp/screens/home/home.dart';
import 'package:otp/screens/otp/components/text_field.dart';

class Body extends StatefulWidget {
  final String phoneNumber;
  const Body({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _controller = TextEditingController();

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

// timer ############################################################################
  late Timer _timer;
  int _tm = 59;

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_tm == 0) {
          timer.cancel();
        } else {
          _tm--;
        }
        setState(() {});
      },
    );
  }
// timer ############################################################################

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/ic_otp.png', width: 70),
            const SizedBox(height: 12),
            const TextTitle(text: 'کد را وارد کنید'),
            const SizedBox(height: 12),
            TextBody(
                text:
                    'ما پیامکی حاوی کد فعال‌سازی به شماره تلفن شما ${widget.phoneNumber} ارسال کرده‌ایم.'),
            const SizedBox(height: 30),
            TextFieldPinCode(
                controller: _controller,
                onCompleted: (value) {
                  print("check Code $value");
                  if (value == '12345') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  }
                }),
            const SizedBox(height: 48),
            TextButton(
                onPressed: _tm == 0
                    ? () {
                        print('request return');
                        _tm = 60;
                        startTimer();
                      }
                    : null,
                child: _tm == 0
                    ? const TextBody(
                        text: "ارسال مجدد کد", color: Color(0xFF0596E8))
                    : TextBody(text: "ارسال مجدد کد تا $_tm ثانیه دیگر")),
          ],
        ),
      ),
    );
  }
}
