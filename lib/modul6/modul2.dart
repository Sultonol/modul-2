import 'package:flutter/material.dart';
import 'praktikum.dart';

class Modul6Page extends StatelessWidget {
  const Modul6Page({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Modul 6'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Praktikum6Page()),
                );
              },
              child: const Text('Praktikum'),
            ),
          ],
        ),
      ),
    );
  }
}
