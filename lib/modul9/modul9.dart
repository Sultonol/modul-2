import 'package:flutter/material.dart';
import 'praktikum/button.dart';
import 'praktikum/counter.dart';
import 'tugas/jari.dart';

class Modul9Page extends StatelessWidget {
  const Modul9Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum Modul 9'),
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
                  MaterialPageRoute(builder: (context) => const CounterPage()),
                );
              },
              child: const Text('Counter App'),
            ),

            const SizedBox(height: 16),

            // 🔹 Named Route
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LikeButtonPage(),
                  ),
                );
              },
              child: const Text('Like Button'),
            ),

            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SidikJari()));
                },
                child: const Text('Sidik Kaki')),

            const SizedBox(height: 16),
            ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LikeButtonPage()));
              },
              child: const Text('Testing')),
          ],
        ),
      ),
    );
  }
}
