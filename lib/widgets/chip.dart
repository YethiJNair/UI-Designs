import 'package:flutter/material.dart';

class Chips extends StatelessWidget {
  const Chips(
      {super.key,
      required this.title,
      required this.bgclr,
      required this.fontclr});
  final String title;
  final Color bgclr;
  final Color fontclr;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: bgclr,
      label: Center(
        child: Text(title, style: TextStyle(color: fontclr, fontSize: 16)),
      ),
    );
  }
}
