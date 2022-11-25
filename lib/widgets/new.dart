import 'package:flutter/material.dart';

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 40,
        height: 25,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Center(
          child: Text(
            "NEW",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
