import 'package:flutter/material.dart';

PopupMenuItem<String> popupMenu(String value, String title) {
  return PopupMenuItem(
    value: value,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Colors.white)),
        const Divider(),
      ],
    ),
  );
}
