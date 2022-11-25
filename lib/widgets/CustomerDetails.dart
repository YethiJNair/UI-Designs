import 'package:flutter/material.dart';
import 'package:uidesign/widgets/paid.dart';
import 'package:uidesign/widgets/reciept.dart';

class CustomersDetails extends StatelessWidget {
  const CustomersDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Reciept(
            title: "CUSTOMERS DETAILS",
            trailing: "SHARE",
            logo: Icons.share_outlined),
        ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Deepa",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("+91-7025778953")
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 3.5, color: Colors.blue),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.whatsapp_sharp,
                  color: Colors.green,
                  size: 40,
                ),
              )
            ],
          ),
        ),
        ListTile(
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "Address",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("D 1101 charatered Beverly\nHills Subramanyapura P.O")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 8),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "City                                Pincode",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Bangalore                     684524"),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Payment",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Online")
                ],
              ),
              trailing: const Paid()),
        ),
      ],
    );
  }
}
