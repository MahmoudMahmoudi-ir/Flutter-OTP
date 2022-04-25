import 'package:flutter/material.dart';
import 'package:otp/components/text.dart';
import 'package:otp/screens/otp/otp.dart';
import 'package:otp/screens/register/components/button.dart';
import 'package:otp/screens/register/components/text_field.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(34, 0, 34, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TextTitle(text: 'شماره تلفن شما'),
                const SizedBox(height: 8),
                const TextBody(
                    text:
                        'لطفا برای ثبت نام یا ورود، شماره تلفن همراه خود را وارد نمایید.'),
                const SizedBox(height: 24),
                TextFieldPhone(
                  controller: _controller,
                  onChanged: (value) {
                    setState(() {});
                  },
                )
              ],
            ),
          ),
          Button(
              controller: _controller,
              onPressed: () {
                if (_controller.text.length == 13) {
                  print('request to server');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Otp(
                              phoneNumber:
                                  _controller.text.replaceAll(' ', ''))));
                }
              }),
        ],
      ),
    );
  }
}
