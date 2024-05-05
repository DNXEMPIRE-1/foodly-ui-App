import 'package:flutter/material.dart';
import 'package:foodly_ui/components/buttons/primary_button.dart';
import 'package:foodly_ui/screens/home/home_screen.dart';
import '../../constants.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Orders"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              const SizedBox(height: defaultPadding),
              // Placeholder for future order summary
              Text(
                "Your order details will be displayed here.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: defaultPadding * 2),
              PrimaryButton(
                text: "Continue Shopping",
                press: () {
                  // Navigate to the home screen and replace the current screen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
