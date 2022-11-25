import 'package:flutter/material.dart';
import 'package:uidesign/widgets/cards2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "Manage Store",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 1 / .75),
            children: const [
              card1(
                  color: Colors.red,
                  icon: Icons.volume_up_outlined,
                  data: "Marketing\nDesigns"),
              card1(
                  color: Colors.green,
                  icon: Icons.currency_rupee,
                  data: "Online\nPayments"),

              card1(
                  color: Colors.orangeAccent,
                  icon: Icons.percent_outlined,
                  data: "Discount\nCoupens"),
              card1(
                  color: Colors.blueAccent,
                  icon: Icons.people_alt_outlined,
                  data: "Marketing\nDesigns"),
              card1(
                  color: Colors.grey,
                  icon: Icons.qr_code_scanner_outlined,
                  data: "Store QR\nCode"),
              card1(
                  color: Colors.deepPurple,
                  icon: Icons.money,
                  data: "Extra\nCharges"),
              card1(
                color: Colors.purpleAccent,
                icon: Icons.list,
                data: "Order\nForms",
                flag: true,
              ),
            ],
          ),
        ));
  }
}
