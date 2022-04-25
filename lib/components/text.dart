import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBody({Key? key, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.bodyText2!.apply(color: color),
    );
  }
}

class TextTitle extends StatelessWidget {
  final String text;

  const TextTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
