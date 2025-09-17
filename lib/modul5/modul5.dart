import 'package:flutter/material.dart';
import 'praktikum.dart';
import 'tugas.dart';

class Modul5Page extends StatelessWidget {
  const Modul5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Modul 5'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PraktikumPage(),
                  ),
                );
              },
              child: const Text('Praktikum'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TugasPage()),
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
