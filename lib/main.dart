import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodly_ui/constants.dart';
import 'package:foodly_ui/screens/onboarding/onboarding_scrreen.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application. dd
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Flutter Way - Foodly UI Kit',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: bodyTextColor),
          bodySmall: TextStyle(color: bodyTextColor),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(defaultPadding),
          hintStyle: TextStyle(color: bodyTextColor),
        ),
      ),
      home: const OnboardingScreen(),
    );
  }
}