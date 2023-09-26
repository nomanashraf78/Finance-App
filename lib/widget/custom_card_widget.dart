



import 'package:flutter/material.dart';

class JaoCard extends StatelessWidget {
  final String title;
  final String amount;
  final Color startColor;
  final Color endColor;
  final Color outerContainerColor;
  final Color innerContainerColor;
  final Color innerContainerColorone;

  JaoCard({
    required this.title,
    required this.amount,
    required this.startColor,
    required this.endColor,
    required this.outerContainerColor,
    required this.innerContainerColor,
    required this.innerContainerColorone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.91, -0.41),
          end: const Alignment(-0.91, 0.41),
          colors: [outerContainerColor, endColor],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          margin: const EdgeInsets.only(right: 50, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(140),
              bottomRight: Radius.circular(250),
              topLeft: Radius.circular(27),
            ),
            gradient: LinearGradient(
              begin: const Alignment(0.67, -0.74),
              end: const Alignment(-0.67, 0.74),
              colors: [innerContainerColor, innerContainerColorone],
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.cover,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFFA73131),
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                amount,
                style: const TextStyle(
                  color: Colors.pink,
                  fontSize: 24.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}











