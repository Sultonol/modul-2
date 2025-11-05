import 'package:flutter/material.dart';
import 'tujuantgs.dart';

class Tugas7Page extends StatelessWidget {
  const Tugas7Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'JavaScript adalah salah satu bahasa pemrograman yang paling populer '
              'dan sering digunakan dalam pengembangan web. Bahasa ini berjalan di sisi klien '
              '(client-side) sehingga memungkinkan halaman web menjadi interaktif dan dinamis. '
              'Dengan JavaScript, kita bisa membuat animasi, memvalidasi form, menampilkan notifikasi, '
              'hingga mengatur bagaimana elemen pada halaman merespons interaksi pengguna.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),

            // gambar di tengah
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/icon/best.png',
                  scale: 4,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              'Selain itu, JavaScript juga sangat kuat karena dapat digunakan bersama dengan HTML '
              'dan CSS untuk membangun tampilan website yang modern. Bahkan dengan hadirnya berbagai framework '
              'dan library seperti React, Vue, atau Angular, pengembangan aplikasi web menjadi lebih cepat, '
              'terstruktur, dan efisien. ',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 30),

            // tombol
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TujuanTgsPage(),
                    ),
                  );
                },
                child: const Text("Click To Tujuan"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
