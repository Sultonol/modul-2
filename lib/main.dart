import 'package:flutter/material.dart';

// Import modul
import 'package:modul_2/modul1/modul1.dart';
import 'package:modul_2/modul2/modul2.dart';
import 'package:modul_2/modul3/modul3.dart';
import 'package:modul_2/modul4/modul4.dart';
import 'package:modul_2/modul5/modul5.dart';
import 'package:modul_2/modul6/modul6.dart';
import 'package:modul_2/modul7/modul7.dart';
import 'package:modul_2/modul8/modul8.dart';
import 'package:modul_2/modul9/modul9.dart';
import 'package:modul_2/modul9/praktikum/counter.dart';

// TAMBAHKAN IMPORT UNTUK MODUL 12
import 'package:modul_2/modul12/modul12.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Modul')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Modul1Page()),
                );
              },
              child: const Text('Modul 1'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Modul2Page()),
                );
              },
              child: const Text('Modul 2'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Modul3Page()),
                );
              },
              child: const Text('Modul 3'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Modul4Page()),
                );
              },
              child: const Text('Modul 4'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Modul5Page()),
                );
              },
              child: const Text('Modul 5'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Modul6Page()),
                );
              },
              child: const Text('Modul 6'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Modul7Page()),
                );
              },
              child: const Text('Modul 7'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Modul8Page()),
                );
              },
              child: const Text('Modul 8'),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Modul9Page()),
                );
              },
              child: const Text('Modul 9'),
            ),

            // TAMBAHKAN TOMBOL UNTUK MODUL 12
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Modul12Page()),
                );
              },
              child: const Text('Modul 12 - Lokasi GPS'),
            ),
          ],
        ),
      ),
    );
  }
}
