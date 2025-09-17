import 'package:flutter/material.dart';
import 'package:modul_2/modul1/modul1.dart';
import 'package:modul_2/modul3/modul3.dart';
import 'package:modul_2/modul4/modul4.dart';
import 'package:modul_2/modul5/modul5.dart';
import 'package:modul_2/modul6/modul2.dart';
import 'modul2/modul2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Flutter',
      home: HomePage(), // Pisahkan HomePage supaya context benar
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Modul')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Modul1Page()),
              );
            },
            child: Text('Modul 1'),
          ),

          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Modul2Page()),
              );
            },
            child: Text('Modul 2'),
          ),

          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Modul3Page()),
              );
            },
            child: Text('Modul 3'),
          ),

          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Modul4Page()),
              );
            },
            child: Text('Modul 4'),
          ),

          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Modul5Page()),
              );
            },
            child: Text('Modul 5'),
          ),

          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Modul6Page()),
              );
            },
            child: Text('Modul 6'),
          ),
        ],
      ),
    );
  }
}
