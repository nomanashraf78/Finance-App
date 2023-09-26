import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIconButton(icon: Icons.home, index: 0),
          _buildIconButton(icon: Icons.search, index: 1),
          _buildIconButton(icon: Icons.person, index: 2),

        ],
      ),
    );
  }

  Widget _buildIconButton({required IconData icon, required int index}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: () {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        if (_selectedIndex == index)
          Positioned(
            bottom: 0,
            child: Container(
              width: 70,
              height: 3,
              color: Colors.black,
            ),
          )
      ],
    );
  }
}
