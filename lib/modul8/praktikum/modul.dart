import 'package:flutter/material.dart';
import 'home.dart';
import 'tujuan.dart';

class Modul8Page extends StatelessWidget {
  const Modul8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home8(),
        Tujuan8.routeName: (context) => const Tujuan8(),
      },
    );
  }
}
