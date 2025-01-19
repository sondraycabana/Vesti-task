import 'package:flutter/material.dart';
Widget buildInfoChip(String label, String value) {
  return Column(
    children: [
      Chip(
        label: Text('$label:'),
        backgroundColor: Colors.blue.shade100,
      ),
      Chip(
        label: Text('$value'),
        backgroundColor: Colors.blue.shade100,
      ),
    ],
  );
}
