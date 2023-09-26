import 'package:flutter/material.dart';
import 'package:untitled/Pages/onboarding_screen.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()), // Navigate to main screen after 3 seconds
      );
    });

    return  Scaffold(
      body: Center(
        child: SafeArea(
            child: Stack(
              children: [
                Container(
                  width: 96,
                  height: 83,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/lanuch.png", ),
                        fit: BoxFit.cover,
                    )
                  ),
        ),
              ],
            )),
      ),
    );
  }
}
