import 'package:flutter/material.dart';

import 'dividerWidget2.dart';

class PaddedDivider extends StatelessWidget {
  const PaddedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8),
      child: DividerWidget2(),
    );
  }
}
