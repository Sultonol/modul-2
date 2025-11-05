import 'package:flutter/material.dart';
import 'package:modul_2/modul5/tugas.dart';
import 'package:modul_2/modul6/praktikumlist.dart';
import 'package:modul_2/modul5/siezebox.dart';
import 'package:modul_2/modul6/tugas.dart';
import 'praktikumgird.dart';

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
              child: const Text('Gird View'),
            ),

            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListPage()),
                );
              },
              child: const Text('List View'),
            ),

            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TugasPage2()),
                );
              },
              child: const Text('GirdBuilder'),
            ),
          ],
        ),
      ),
    );
  }
}
