import 'package:flutter/material.dart';
import 'tujuanroute.dart';
import 'homeroute.dart';

class Modul7NamedEntry extends StatelessWidget {
  const Modul7NamedEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo NamedRoute",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeRoute(),
        '/TujuanRoute': (context) => const TujuanRoute(),
      },
    );
  }
}
