import 'package:flutter/material.dart';

TableRow ReferralRow(
    String sno, String name, String type, String Amount, String Status) {
  return TableRow(children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(sno),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(name),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        type,
        style: TextStyle(color: Colors.blue),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('\$$Amount.00'),
    ),
    Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          Status,
          style: TextStyle(
            color: (Status == 'Approved') ? Colors.green : Colors.red,
          ),
        ))
  ]);
}
