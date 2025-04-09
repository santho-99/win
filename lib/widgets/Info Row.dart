import 'package:flutter/material.dart';

TableRow buildRow(IconData icon, String label, String value) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(icon, size: 18),
            const SizedBox(width: 8),
            Text(label),
          ],
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(":"),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          value,
        ),
      ),
    ],
  );
}
