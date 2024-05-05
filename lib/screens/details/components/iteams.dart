// iteams.dart
import 'package:flutter/material.dart';
import 'package:foodly_ui/components/cards/iteam_card.dart';
import 'package:foodly_ui/constants.dart';
import 'components/item_card.dart'; // import ItemCard

class Items extends StatelessWidget {
  const Items({Key? key, required this.demoData}) : super(key: key); // Add required parameter demoData

  final List<Map<String, dynamic>> demoData; // Add demoData as a required parameter

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding / 2),
        ...List.generate(
          demoData.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: ItemCard(
              title: demoData[index]["name"] ?? "No Title",
              description: demoData[index]["location"] ?? "No Location",
              image: demoData[index]["image"] ?? "No Image",
              foodType: demoData[index]["foodType"] ?? "Fried",
              price: 0, 
              priceRange: "\$ \$", 
              press: () {}, 
            ),
          ),
        ),
      ],
    );
  }
}
