import 'package:flutter/material.dart';

// stores ExpansionPanel state information
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> expListItem = <Item>[
  Item(
      expandedValue:
          'Dukaan caters to a wide veriety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online -\nDukaan is the perfect platform for you.',
      headerValue: 'What type of bussiness can use Dukaan premium?'),
  Item(expandedValue: '', headerValue: 'What is your refund policy?'),
  Item(
      expandedValue: '',
      headerValue: 'Will there be an automatic charge after the paid trial?'),
  Item(expandedValue: '', headerValue: 'What payment methode do you offer?'),
  Item(expandedValue: '', headerValue: 'What happens when my free trial ends?'),
  Item(
      expandedValue: '',
      headerValue: 'What are the terms for the custom domain?'),
];

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // final List<Item> _data = expListItem[index];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(13),
          child: Text(
            ' Frequently asked questions',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                backgroundColor: Colors.white),
          ),
        ),
        ExpansionPanelList.radio(
          children: expListItem.map((Item item) {
            return ExpansionPanelRadio(
              value: item.headerValue,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 3,
                    bottom: 3,
                  ),
                  child: ListTile(
                    title: Padding(
                      padding:
                          const EdgeInsets.only(top: 5, bottom: 5, left: 2),
                      child: Text(
                        item.headerValue,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                );
              },
              // isExpanded: item.isExpanded,
              body: ListTile(
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15, left: 3),
                  child: Text(item.expandedValue),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
