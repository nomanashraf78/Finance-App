import 'package:flutter/material.dart';
import 'package:untitled/Pages/signIn_screen.dart';
import 'package:untitled/Pages/signUp_screen.dart';
import 'package:untitled/const.dart';
import 'package:untitled/widget/second_custom_button_widget.dart';




class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF5264F9),
                  Color(0xFF3AF9EF),

                ],
                stops: [-0.0654, 0.8789],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
             //   bottomLeft: Radius.circular(100.0),
                bottomRight: Radius.circular(824.734),
              ),
            ),

            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 60),
                        Image.asset('assets/Logo-White.png', height: 59, width: 60), // Replace with your actual logo asset
                        const SizedBox(height: 10),
                         Text(
                          'Welcome Back',
                          style: AppTextStyles.heading2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
        Expanded(
          flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SecondCustomButtonWidget(
              text: 'Sign In',
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => SignInScreen())
                );
              }, backgroundImage: 'assets/maskgroup.png',
              backgroundColor: const Color(0xFF3A5BDA),),
            SecondCustomButtonWidget(
              text: 'Sign Up',
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpScreen())
                );
              }, backgroundImage: '',
              backgroundColor: Colors.black)
          ],
        ))

        ],
      ),
    );
  }
}

