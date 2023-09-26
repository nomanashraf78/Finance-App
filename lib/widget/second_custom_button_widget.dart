import 'package:flutter/material.dart';
import 'package:untitled/const.dart';



class SecondCustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String backgroundImage;
  final Color backgroundColor;
  final double width;
  final double height;

  SecondCustomButtonWidget({
    required this.text,
    required this.onPressed,
    required this.backgroundImage,
    required this.backgroundColor,
    this.width = 315.0,
    this.height = 72.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(vertical: 15)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: AppTextStyles.title,  // Replace with AppTextStyles.heading2 once defined
              ),
              const Icon(Icons.navigate_next, color: Colors.white, size: 30,),
            ],
          ),
        ),
      ),
    );
  }
}



