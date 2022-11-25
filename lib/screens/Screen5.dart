import 'package:flutter/material.dart';
import 'package:uidesign/widgets/Additional_info.dart';
import 'package:uidesign/widgets/CustomerDetails.dart';
import 'package:uidesign/widgets/GrandTotal.dart';
import 'package:uidesign/widgets/customList.dart';
import 'package:uidesign/widgets/datelist.dart';
import 'package:uidesign/widgets/dividerWidget2.dart';
import 'package:uidesign/widgets/paddedDivider.dart';

// import 'package:flutter/src/widgets/container.dart'/;
// import 'package:flutter/src/widgets/framework.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Order "),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Datelist(),
            DividerWidget2(),
            CustomList(),
            PaddedDivider(),
            GrandTotal(),
            PaddedDivider(),
            CustomersDetails(),
            DividerWidget2(),
            Add_info()
          ],
        ),
      ),
    );
  }
}
