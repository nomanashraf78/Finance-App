import 'dart:math' as math;
import 'package:flutter/material.dart';

class CreditCardRepayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 105,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(1.00, -0.08),
              end: Alignment(-1, 0.08),
              colors: [Color(0xFF4960F9), Color(0xFF1433FF)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, top: 20),
                width: 156,
                child: const Text(
                  'Credit Card Repayment',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),

        ),
        Positioned(
          top: 2, // Adjust this value
          right: 40, // Adjust this value
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(-0.9),
            child: Container(
              width: 140.96,
              height: 140.96,
              decoration: const ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.79, -0.61),
                  end: Alignment(0.79, 0.61),
                  colors: [Color(0xFF2F56FB), Color(0xFFC72FF8)],
                ),
                shape: OvalBorder(),
              ),
            ),
          ),
        ),
        Positioned(
          top: 10, // Adjust this value
          right: -90, // Adjust this value
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.10),
            child: Container(
              width: 140.79,
              height: 140.79,
              decoration: const ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.79, -0.61),
                  end: Alignment(0.79, 0.61),
                  colors: [Color(0xFF2F56FB), Color(0xFFC72FF8)],
                ),
                shape: OvalBorder(),
              ),

            ),
          ),
        ),
        Align(
          alignment: const Alignment(0.7, 1),
          child: Padding(
            padding: const EdgeInsets.only(top: 60, left: 70),
            child: Container(
              decoration: const BoxDecoration(
              ),
              child: const Icon(Icons.navigate_next_sharp, color: Colors.white,),
            ),
          ),
        ),
      ],
    );
  }
}
