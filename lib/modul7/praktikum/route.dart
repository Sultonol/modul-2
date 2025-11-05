import 'package:flutter/material.dart';
import 'tugas.dart';
import 'tujuantgs.dart';

class AppRoute extends StatelessWidget {
  const AppRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Route Tugas',
      initialRoute: '/tugas',
      routes: {
        '/tugas': (context) => const Tugas7Page(),
        '/tujuantgs': (context) => const TujuanTgsPage(),
      },
    );
  }
}
