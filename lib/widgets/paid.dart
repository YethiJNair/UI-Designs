import 'package:flutter/material.dart';

class Paid extends StatelessWidget {
  const Paid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 20,
        width: 42,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 162, 255, 165),
            borderRadius: BorderRadius.circular(4)),
        child: const Center(
          child: Text(
            "PAID",
            style: TextStyle(
                color: Color.fromARGB(255, 61, 158, 64),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
