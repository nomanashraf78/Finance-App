import 'package:flutter/material.dart';




class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.04, -1.0),
          end: Alignment(1.04, 1.0),
          colors: [
            Color(0xFF4960F9),
            Color(0xFF4960F9),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(70.0),
          bottomLeft: Radius.circular(70.0),
        ),
      ),
      child: Stack(
        children: [
          // Drawer Button (Left Side)
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          // Circle Avatar (Right Side)
          const Positioned(
            top: 40,
            right: 10,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://img.freepik.com/premium-photo/man-with-red-jacket-white-circle-around-his-face_745528-3182.jpg'), // Aap yahan apni image ka URL provide karein
            ),
          ),
          // Title and Description (Center)
           Center(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(top: 15),
                  width: 270,
                  height: 100,
                  child: const Text(
                    'You can check your cards here',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                )
               // SizedBox(height: 60),
               //  Text(
               //    'Your Description Here',
               //    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
               //  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(250.0);
}
