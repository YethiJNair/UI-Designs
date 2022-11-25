import 'package:flutter/material.dart';

class List1 extends StatelessWidget {
  const List1({super.key, required this.Title, required this.trailing});
  final String Title;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        Title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            trailing,
            style: const TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400),
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
