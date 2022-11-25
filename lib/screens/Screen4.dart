import 'package:flutter/material.dart';
import 'package:uidesign/widgets/dukaanPremium.dart';
import '../widgets/DukaanCard.dart';
import '../widgets/featureList.dart';
import '../widgets/premiumBottomButton.dart';
import '../widgets/premiumExpansionPanel.dart';
import '../widgets/premiumFooter.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.teal, elevation: 0.0,
        // ignore: sort_child_properties_last
        title: const Center(
          child: Text("Dukaan Premium       "),
        ),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const DukaanCard(),
          const FeatureList(),
          const PremiumYoutube(),
          const MyStatefulWidget(),
          const PremFoot(),
          const PremBotButton()
        ],
      ),
    );
  }
}
