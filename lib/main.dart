import 'package:flutter/material.dart';
import 'package:otp/screens/register/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter OTP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Shabnam',
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 14, fontFamily: 'Shabnam',color: Color(0xFF757575)),
          headline6: TextStyle(fontSize: 18, fontFamily: 'Shabnam',color: Color(0xFF222222),fontWeight: FontWeight.bold),
          button: TextStyle(fontSize: 15, fontFamily: 'Shabnam',fontWeight: FontWeight.bold),
        ),
      ),
      home: const Register(),
      debugShowCheckedModeBanner: false,
    );
  }
}
