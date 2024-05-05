import 'package:flutter/material.dart';
import 'package:foodly_ui/screens/details/details_screen.dart';
import '../../../components/cards/big/restaurant_info_big_card.dart';
import '../../../components/scalton/big_card_scalton.dart';
import '../../../constants.dart';

import '../../../demoData.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isLoading = true;
  int demoDataLength = 4;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: ListView.builder(
          itemCount: isLoading ? 3 : demoDataLength,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: defaultPadding),
            child: isLoading
                ? const BigCardScalton()
                : RestaurantInfoBigCard(
                    images: demoBigImages..shuffle(),
                    name: demoMediumCardData[index]["name"],
                    rating: demoMediumCardData[index]["rating"],
                    numOfRating: demoMediumCardData[index]["numOfRating"],
                    deliveryTime: demoMediumCardData[index]["deliveryTime"],
                    foodType: demoMediumCardData[index]["foodType"],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailsScreen(),
                        ),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
