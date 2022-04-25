import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class TextFieldPhone extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  const TextFieldPhone({Key? key, this.controller, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [MaskedInputFormatter('#### ### ####')],
      maxLength: 13,
      onChanged: onChanged,
      decoration: InputDecoration(
        counterText: '',
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Color(0xFF37A9F0), width: 1.5)),
        contentPadding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
        labelText: 'شماره تلفن',
        labelStyle: Theme.of(context)
            .textTheme
            .bodyText2!
            .apply(color: const Color(0xFF37A9F0)),
      ),
    );
  }
}
