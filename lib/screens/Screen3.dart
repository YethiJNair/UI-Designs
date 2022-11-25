import 'package:flutter/material.dart';
import 'package:uidesign/widgets/Listviews.dart';
import 'package:uidesign/widgets/chipsCombined.dart';
import 'package:uidesign/widgets/dividerWidget.dart';
import 'package:uidesign/widgets/list.dart';
import 'package:uidesign/widgets/list2.dart';
import 'package:uidesign/widgets/paymentCard.dart';
import 'package:uidesign/widgets/paymentcards.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Payments",
          style: TextStyle(fontSize: 20),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.info_outline,
              size: 35,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const PaymentCard(),
            const List1(Title: "Default Method", trailing: "Online Payment"),
            const List1(Title: "Payment Profile", trailing: "Bank Account"),
            const DividerWidget(),
            const List2(Title: "Payments Overview", trailing: "Life Time"),
            const PaymentCards2(),
            const List2(Title: "Transactions", trailing: ""),
            const ChipsCombined(),
            Listviews()
          ],
        ),
      ),
    );
  }
}
