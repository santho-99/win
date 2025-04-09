import 'package:flutter/material.dart';

TextStyle kdateTime = const TextStyle(
    color: Colors.red, fontWeight: FontWeight.bold, fontSize: 10);

ButtonStyle kFilledButton =
    ButtonStyle(backgroundColor: WidgetStateProperty.all(Color(0xFF0C29C9)));

ButtonStyle kBorderedButton = ButtonStyle(
    side: WidgetStateProperty.all(
        const BorderSide(color: Colors.blueAccent, width: 2)),
    backgroundColor: WidgetStateProperty.all(Colors.white12));

Color kbrandColor = const Color(0xFF0C29C9);
