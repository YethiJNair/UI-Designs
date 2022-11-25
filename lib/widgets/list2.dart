import 'package:flutter/material.dart';

class List2 extends StatelessWidget {
  const List2({super.key, required this.Title, required this.trailing});
  final String Title;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        Title,
        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            trailing,
            style: const TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400),
          ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
