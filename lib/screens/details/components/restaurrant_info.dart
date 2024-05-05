import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class RestaurantInfo extends StatelessWidget {
  final String name;

  const RestaurantInfo({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headlineMedium,
            maxLines: 1,
          ),
          const SizedBox(height: defaultPadding / 2),
          // แสดงรายละเอียดอื่นๆ
        ],
      ),
    );
  }
}
