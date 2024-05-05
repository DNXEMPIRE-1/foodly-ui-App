import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly_ui/entry_point.dart';
import 'package:foodly_ui/screens/home/home_screen.dart';
import '../../components/buttons/socal_button.dart';
import '../../components/welcome_text.dart';
import '../../constants.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

class _SignInScreenState extends State<SignInScreen> {
  _SignInScreenState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        // print('User is currently signed out!');
      } else {
        print('User is signed in!');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EntryPoint()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Sign In"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeText(
                title: "Welcome to หิวไก่",
                text: "click for login by your google",
              ),
              const SizedBox(height: defaultPadding),

              // Google
              SocalButton(
                press: () async {
                  await signInWithGoogle();
                },
                text: "Connect with Google",
                color: const Color(0xFF4285F4),
                icon: SvgPicture.asset(
                  'assets/icons/google.svg',
                ),
              ),
              const SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
