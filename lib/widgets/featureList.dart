import 'package:flutter/material.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List Icon = [
      "Assets/f1.jpeg",
      "Assets/f2.jpeg",
      "Assets/f3.jpeg",
      "Assets/f4.jpeg",
    ];

    List features = [
      "Custom domain name",
      "Verified seler badge",
      "Dukaan for PC",
      "Priority Support"
    ];
    List featureSubtitle = [
      'Get your own custom domain and build your bran don the internet.',
      'Get green verified tag under your store name and build trust.',
      'Access all the exclusive premium features o Dukaan for PC.',
      'Get  your  questions resolved with yourn priority customer support',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 13, bottom: 8),
          child: Text(
            'Features',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: features.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: ListTile(
                leading: SizedBox(
                  child: Image.asset(Icon[index]),
                ),
                title: Text(features[index],
                    style: const TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text(featureSubtitle[index],
                    style: const TextStyle(fontSize: 13)),
              ),
            );
          },
        ),
        const Divider(
          thickness: 5,
        ),
      ],
    );
  }
}
