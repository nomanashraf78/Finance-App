import 'package:flutter/material.dart';
import 'package:untitled/Pages/recent_transaction.dart';
import 'package:untitled/Pages/transiction_screen.dart';
import 'package:untitled/const.dart';
import 'package:untitled/widget/custom_app_bar_widget.dart';
import 'package:untitled/widget/custom_bottom_navigation_bar_widget.dart';
import 'package:untitled/widget/custom_list_tile_widet.dart';
import 'package:untitled/widget/search_bar_widget.dart';

class SearchTransactionScreen extends StatefulWidget {
  const SearchTransactionScreen({super.key});

  @override
  State<SearchTransactionScreen> createState() => _SearchTransactionScreenState();
}

class _SearchTransactionScreenState extends State<SearchTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer:  Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,

            children: <Widget>[
              // Drawer Header
              const DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,

                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      // Circle Avatar
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://img.freepik.com/premium-photo/man-with-red-jacket-white-circle-around-his-face_745528-3182.jpg'),
                        radius: 40.0,
                      ),
                      SizedBox(width: 16.0), // Space between Avatar and Texts
                      // Name and Email
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Your Name Here', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 2.0),
                          Text('youremail@example.com', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              ListTile(
                leading: const Icon(Icons.payment, color: Color(0xFF4960F9),), // Aap yahan apna icon choose karein
                title: const Text('Payments', style: TextStyle(color: Color(0xFF4960F9)),),
                trailing: const Icon(Icons.navigate_next, color: Color(0xFF4960F9),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)
                  => const SearchTransactionScreen())
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.transform, color: Color(0xFF4960F9),), // Aap yahan apna icon choose karein
                title: const Text('Recent Transaction', style: TextStyle(color: Color(0xFF4960F9)),),
                trailing: const Icon(Icons.navigate_next, color: Color(0xFF4960F9),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)
                  => const RecentTransaction()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.transform, color: Color(0xFF4960F9),), // Aap yahan apna icon choose karein
                title: const Text('Search Transaction', style: TextStyle(color: Color(0xFF4960F9)),),
                trailing: const Icon(Icons.navigate_next, color: Color(0xFF4960F9),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)
                  => const SearchTransactionScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.add_card_sharp, color: Color(0xFF4960F9),), // Aap yahan apna icon choose karein
                title: const Text('My Cards', style: TextStyle(color: Color(0xFF4960F9)),),
                trailing: const Icon(Icons.navigate_next, color: Color(0xFF4960F9),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)
                  =>  TransactionScreen()));
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xFF4960F9),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),

              child:  Column(
                children: [
                  const SizedBox(height: 20,),
                  const SearchBarWidget(),
                  const SizedBox(
                    height: 20,
                  ),

                  CustomListTileWidget(
                    titleStyle: AppTextStyles.titleStyle(Colors.white),
                    priceStyle: AppTextStyles.priceStyle(Colors.white),
                    descriptionStyle: AppTextStyles.subtitle(Colors.white),
                    avatarSrc: '',
                    title: 'Your Title',
                    description: 'Your Description',
                    icon: Icons.navigate_next,
                    price: '\$123',
                    color: const Color(0xFFFFCF87),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomListTileWidget(
                    titleStyle: AppTextStyles.titleStyle(Colors.white),
                    priceStyle: AppTextStyles.priceStyle(Colors.white),
                    descriptionStyle: AppTextStyles.subtitle(Colors.white),
                    avatarSrc: '',
                    title: 'Your Title',
                    description: 'Your Description',
                    icon: Icons.navigate_next,
                    price: '\$123',
                    color: const Color(0xCDF78C8C),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomListTileWidget(
                    titleStyle: AppTextStyles.titleStyle(Colors.white),
                    priceStyle: AppTextStyles.priceStyle(Colors.white),
                    descriptionStyle: AppTextStyles.subtitle(Colors.white),
                    avatarSrc: '',
                    title: 'Your Title',
                    description: 'Your Description',
                    icon: Icons.navigate_next,
                    price: '\$123',
                    color: const Color(0xEDF6C57F),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomListTileWidget(
                    titleStyle: AppTextStyles.titleStyle(Colors.white),
                    priceStyle: AppTextStyles.priceStyle(Colors.white),
                    descriptionStyle: AppTextStyles.subtitle(Colors.white),
                    avatarSrc: '',
                    title: 'Your Title',
                    description: 'Your Description',
                    icon: Icons.navigate_next,
                    price: '\$123',
                    color: const Color(0xFF38FE19),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomListTileWidget(
                    titleStyle: AppTextStyles.titleStyle(Colors.white),
                    priceStyle: AppTextStyles.priceStyle(Colors.white),
                    descriptionStyle: AppTextStyles.subtitle(Colors.white),
                    avatarSrc: '',
                    title: 'Your Title',
                    description: 'Your Description',
                    icon: Icons.navigate_next,
                    price: '\$123',
                    color: const Color(0xFFA27430),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
