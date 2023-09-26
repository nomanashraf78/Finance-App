import 'package:flutter/material.dart';
import 'package:untitled/const.dart';

class CustomListTileWidget extends StatelessWidget {
  final String avatarSrc;
  final String title;
  final String description;
  final String price;
  final IconData icon;
  final Color color;
  final TextStyle? titleStyle;  // New
  final TextStyle? descriptionStyle;  // New
  final TextStyle? priceStyle;  // New
  final Color? iconColor;  // New

  const CustomListTileWidget({
    Key? key,
    required this.color,
    required this.avatarSrc,
    required this.title,
    required this.description,
    required this.price,
    required this.icon,
    this.titleStyle,  // New
    this.descriptionStyle,  // New
    this.priceStyle,  // New
    this.iconColor = Colors.white,  // New
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: color,
            backgroundImage: NetworkImage(
              avatarSrc,
            ),
            radius: 30.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleStyle,  // Updated
                  ),
                  Text(description, style: descriptionStyle,),  // Updated
                ],
              ),
            ),
          ),
          Row(
            children: [
              Text(
                price,
                style: priceStyle,  // Updated
              ),
              Icon(
                icon,
                color: iconColor,  // Updated
              ),
            ],
          ),
        ],
      ),
    );
  }
}

