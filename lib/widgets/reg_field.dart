import 'package:flutter/material.dart';

Widget RegistrationTextField(String fieldName, String hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        fieldName,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 8,
      ),
      TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
    ],
  );
}
