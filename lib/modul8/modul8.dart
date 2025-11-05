// modul8/modul8.dart
import 'package:flutter/material.dart';
import 'praktikum/home.dart';
import 'tugas/home.dart';

class Modul8Page extends StatelessWidget {
  const Modul8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum Modul 8'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🔹 Tombol Praktikum
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home8()),
                );
              },
              child: const Text('Praktikum'),
            ),

            const SizedBox(height: 16),

            // 🔹 Tombol Tugas
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
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
