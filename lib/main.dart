import 'package:flutter/material.dart';
import 'package:untitled/Pages/recent_transaction.dart';
import 'package:untitled/Pages/signIn_screen.dart';
import 'package:untitled/Pages/spalsh_screen.dart';
import 'package:untitled/Pages/transiction_screen.dart';
import 'package:untitled/Pages/user_profile_screen.dart';
import 'package:untitled/Pages/welcome_screen.dart';
import 'package:untitled/widget/custom_card_carouse_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       // home: const RecentTransaction(),
       home: const SpalshScreen()
    );
  }
}
