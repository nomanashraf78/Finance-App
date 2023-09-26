import 'package:flutter/material.dart';
import 'package:untitled/Pages/user_profile_screen.dart';
import 'package:untitled/const.dart';
import 'package:untitled/widget/custom_text_form_field_widget.dart';
import 'package:untitled/widget/second_custom_button_widget.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();

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
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const SizedBox(height: 60),
                    Image.asset('assets/Logo-White.png',
                        height: 59,
                        width: 60), // Replace with your actual logo asset
                    const SizedBox(height: 10),
                    Text(
                      'Welcome Back',
                      style: AppTextStyles.heading2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SignIn",
                      style: AppTextStyles.title1,
                    ),
                    const SizedBox(height: 30,),
                    CustomTextFormFieldWidget(
                      hintText: 'Enter your email',
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20,),
                    CustomTextFormFieldWidget(
                      hintText: 'Enter your password',
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20,),
                    Text("Forgot Password ?", style: AppTextStyles.subheading,)
                  ],
                ),
              )),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SecondCustomButtonWidget(
                  text: 'Sign In',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>
                    UserProfileScreen())
                    );
                  },
                  backgroundImage: 'assets/maskgroup.png',
                  backgroundColor: const Color(0xFF3A5BDA),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
