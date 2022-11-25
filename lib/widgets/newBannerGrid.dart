import 'package:flutter/material.dart';

class NewBannerGrid extends StatelessWidget {
  const NewBannerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: const Color.fromARGB(255, 41, 190, 46),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
        child: Text(style: TextStyle(color: Colors.white), 'New'),
      ),
    );
  }
}
