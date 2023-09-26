import 'package:flutter/material.dart';
import 'package:untitled/Pages/home_screen.dart';
import 'package:untitled/Pages/welcome_screen.dart';
import 'package:untitled/const.dart';
import 'package:untitled/widget/custom_button_widget.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        onPageChanged: (int page) {
          setState(() {
            currentPage = page;
          });
        },
        children: [
          buildPage('assets/onboarding_screen_1.png', 'Get 5% cashback on each transaction and spend it easily',
              'Save Your Money Conveniently', color: Colors.white, buttonText: 'Next'),
          buildPage('assets/onboarding_screen_1.png', 'Online Investing has never been so easier as it is right now',
              'Enjoy commission free stock trading', color: Colors.white, buttonText: 'Get Started'),
          // Add other pages here with appropriate text and button text
        ],
      ),
    );
  }

  Widget buildPage(String imagePath, String description, String title,{required Color color, required String buttonText}) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.heading1,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    description,
                    style: AppTextStyles.subheading,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  CustomButtonWidget(
                    text: buttonText,
                    onPressed: () {
                     if(buttonText == 'Next'){
                       pageController.nextPage(
                         duration: const Duration(milliseconds: 300),
                         curve: Curves.bounceIn,
                       );
                     } else if (buttonText == 'Get Started') {
                       Navigator.pushReplacement(
                         context,
                         MaterialPageRoute(builder: (context) =>   WelcomeScreen()),
                       );
                     }
                    }, backgroundImage: 'assets/maskgroup.png',

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

