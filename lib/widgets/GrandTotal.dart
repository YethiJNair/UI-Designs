import 'package:flutter/material.dart';

class GrandTotal extends StatelessWidget {
  const GrandTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Item total"),
            SizedBox(
              height: 3,
            ),
            Text("Delivery"),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Text(
                "Grand Total",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text("₹799"),
            SizedBox(
              height: 3,
            ),
            Text(
              "FREE",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Text(
                "₹799",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
