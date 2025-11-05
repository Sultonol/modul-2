import 'package:flutter/material.dart';
import 'package:modul_2/modul7/praktikum/tugas.dart';
import 'materialroute/home.dart';
import 'namedroute/named_entry.dart';

class Modul7Page extends StatelessWidget {
  const Modul7Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum Modul 7'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🔹 Material Route
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              child: const Text('Material Route'),
            ),

            const SizedBox(height: 16),

            // 🔹 Named Route
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Modul7NamedEntry(),
                  ),
                );
              },
              child: const Text('Named Route'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tugas7Page()),
                );
              },
              child: const Text('Tugas'),
            ),
          ],
        ),
      ),
    );
  }
}
