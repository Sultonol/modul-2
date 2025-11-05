import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo List View',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo List View'),
          backgroundColor: Colors.lightBlue,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            tile(
              Colors.blueAccent.shade400,
              'assets/icon/boy.png',
              'Kehadiran',
            ),
            tile(
              Colors.greenAccent.shade400,
              'assets/icon/timetable.png',
              'Jadwal Kuliah',
            ),
            tile(
              Colors.yellowAccent.shade400,
              'assets/icon/homeschooling.png',
              'Tugas',
            ),
            tile(
              Colors.redAccent.shade400,
              'assets/icon/features.png',
              'Pengumuman',
            ),
            tile(Colors.purpleAccent.shade400, 'assets/icon/best.png', 'Nilai'),
            tile(
              Colors.tealAccent.shade400,
              'assets/icon/pencil.png',
              'Catatan',
            ),
          ],
        ),
      ),
    );
  }
}

ClipRRect tile(Color warnaKotak, String gambar, String judul) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      margin: const EdgeInsets.only(bottom: 10), // biar ada jarak antar item
      color: warnaKotak,
      child: ListTile(
        leading: Image.asset(gambar, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(
          judul,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        tileColor: warnaKotak,
      ),
    ),
  );
}
