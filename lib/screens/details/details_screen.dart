import 'package:flutter/material.dart';
import 'package:foodly_ui/components/cards/iteam_card.dart'; // ลบออก
import 'package:foodly_ui/demoData.dart';
import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: restaurantMenu.keys.map((restaurantName) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding,
                      vertical: defaultPadding / 2,
                    ),
                    child: Text(
                      restaurantName,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: restaurantMenu[restaurantName]!.length,
                    itemBuilder: (context, index) {
                      final item = restaurantMenu[restaurantName]![index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding,
                          vertical: defaultPadding / 2,
                        ),
                        child: ItemCard(
                          title: item["name"] ?? "No Title",
                          description: item["location"] ?? "No Location",
                          image: item["image"] ?? "No Image",
                          foodType: item["foodType"] ?? "No Food Type",
                          price: 0, // ไม่ได้ใช้ราคา
                          priceRange: "\$ \$", // ไม่ได้ใช้ราคา
                          press: () {}, // Add empty function to press
                        ),
                      );
                    },
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
