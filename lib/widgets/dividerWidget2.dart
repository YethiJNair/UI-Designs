import 'package:flutter/material.dart';

class DividerWidget2 extends StatelessWidget {
  const DividerWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Divider(
        thickness: 2,
      ),
    );
  }
}
