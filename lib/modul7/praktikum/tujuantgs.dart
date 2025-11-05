import 'package:flutter/material.dart';

class TujuanTgsPage extends StatelessWidget {
  const TujuanTgsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Tujuan')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Laravel adalah salah satu framework PHP yang sangat populer '
              'untuk membangun aplikasi web modern. Framework ini dikenal '
              'karena strukturnya yang rapi, dokumentasi yang lengkap, serta '
              'banyak fitur bawaan yang memudahkan developer dalam membuat sistem '
              'yang aman, cepat, dan mudah dikelola.',
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
              'Beberapa fitur utama Laravel antara lain adalah routing yang sederhana, '
              'Eloquent ORM untuk mengelola database, sistem autentikasi dan otorisasi, '
              'serta Blade template engine untuk mengatur tampilan. '
              'Laravel juga mendukung penggunaan API, queue, hingga integrasi dengan service lain. '
              'Dengan semua fitur ini, Laravel menjadi pilihan utama banyak developer '
              'dalam mengembangkan aplikasi skala kecil maupun besar.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 30),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  ); // balik ke halaman sebelumnya (tugas.dart)
                },
                child: const Text("Back To Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
