import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:untitled/Pages/transiction_screen.dart';
import 'package:untitled/widget/custom_text_form_field_widget.dart';
import 'package:untitled/widget/second_custom_button_widget.dart';

// class UserProfileScreen extends StatefulWidget {
//   @override
//   State<UserProfileScreen> createState() => _UserProfileScreenState();
// }
//
// class _UserProfileScreenState extends State<UserProfileScreen> {
//
//   TextEditingController emailController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Icon(
//                   Icons.person,
//                   size: 100.0,
//                   color: Color(0xFF40C3F2),
//                 ),
//                 const SizedBox(height: 20,),
//                 CustomTextFormField(
//                   hintText: 'Enter your Name',
//                   controller: emailController,
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//                 const SizedBox(height: 20,),
//                 CustomTextFormField(
//                   hintText: 'Enter your Address',
//                   controller: emailController,
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//                 const SizedBox(height: 20,),
//                 CustomTextFormField(
//                   hintText: 'Enter your Name',
//                   controller: emailController,
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//                 const SizedBox(height: 20,),
//                 CustomTextFormField(
//                   hintText: 'Enter your Date',
//                   controller: emailController,
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//                 const SizedBox(height: 50,),
//                 SecondCustomButton(
//                   text: 'Complete',
//                   onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (_) => TransactionScreen()));
//                   },
//                   backgroundColor: Colors.black26,
//                   backgroundImage: '',
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class UserProfileScreen extends StatelessWidget {

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.28, -0.96),
            end: Alignment(-0.28, 0.96),
            colors: [Color(0xFF4960F9), Color(0xFF1937FE)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -40,
              right: -30,
              child: ClipPath(
                clipper: OctagonalClipper(),
                child: Container(
                  width: 230,
                  height: 220,
                  color: const Color(0xFFB52FF8),
                ),
              ),
            ),
            Positioned(
              top: -0,
              right: -30,
              child: ClipPath(
                clipper: DiagonalPathClipperOne(),
                child: Container(
                  width: 200,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color(0xFF40C3F2),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(60.0),
                    ),
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: NetworkImage("https://img.freepik.com/free-vector/illustration-circle-stamp-banner-vector_53876-27183.jpg?w=2000"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                      ),
                      shadows: const [
                         BoxShadow(
                          color: Color(0x33000000),
                          blurRadius: 22,
                          offset: Offset(0, 8),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  CustomTextFormFieldWidget(
                    hintText: 'Enter your Name',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20,),
                  CustomTextFormFieldWidget(
                    hintText: 'Enter your Address',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20,),
                  CustomTextFormFieldWidget(
                    hintText: 'Enter your Name',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20,),
                  CustomTextFormFieldWidget(
                    hintText: 'Enter your Date',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),

                  const SizedBox(height: 50,),
                  SecondCustomButtonWidget(
                    text: 'Complete',
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => TransactionScreen()));
                    },
                    backgroundColor: Colors.black26,
                    backgroundImage: '',
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


