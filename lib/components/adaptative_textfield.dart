import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboadrType;
  final Function onSubmitted;
  final String label;

  AdaptativeTextField({
    this.controller,
    this.onSubmitted,
    this.label,
    this.keyboadrType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
          padding: const EdgeInsets.only(
            bottom: 8.0
          ),
          child: CupertinoTextField(
            controller: controller,
            keyboardType: keyboadrType,
            onSubmitted: onSubmitted,
            placeholder: label,
            padding: EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 12,
            ),
          ),
        )
        : TextField(
            controller: controller,
            keyboardType: keyboadrType,
            onSubmitted: onSubmitted,
            decoration: InputDecoration(
              labelText: label,
            ),
          );
  }
}
