import 'package:flutter/material.dart';
import 'package:uidesign/widgets/catalogue.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Catalogue"),
        ),
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        body: const Catalogue());
  }
}
