import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {

  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      decoration: ShapeDecoration(
        color: const Color(0xFF05199E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 10,),
            Container(
              height: 21,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: const Icon(Icons.search, color: Colors.white,
              ),
            ),
            const SizedBox(width: 10,),
            Container(
              height: 21,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: const Text(
                'Search',
                style: TextStyle(
                  color: Color(0xFF3D56FA),
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
