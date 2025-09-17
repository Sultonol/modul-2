import 'package:flutter/material.dart';

class PraktikumPage extends StatelessWidget {
  const PraktikumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Card',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card Demo'),
          backgroundColor: Colors.amber,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // --- Bagian ListTile ---
                const ListTile(
                  leading: Icon(Icons.location_pin, color: Colors.red),
                  title: Text(
                    'Taman Nasional Bromo Tengger Semeru',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Jawa Timur, Indonesia'),
                ),

                // --- Container dengan OutlinedButton ---
                Container(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          // aksi kalau ditekan MAP
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.blue),
                        ),
                        child: const Icon(Icons.map),
                      ),
                      const SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {
                          // aksi kalau ditekan PHONE
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.blue),
                        ),
                        child: const Icon(Icons.phone),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
