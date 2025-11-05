import 'package:flutter/material.dart';
import 'screen_arguments.dart';
import 'tujuan.dart';

class Home8 extends StatelessWidget {
  const Home8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('This Is Home', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Buat instance ScreenArguments
                final args = ScreenArguments(
                  'Valorant',
                  'Genre: RPG',
                  'Valorant Game populer in Indonesia.',
                );

                // Navigasi ke Tujuan8 dengan nama route
                Navigator.pushNamed(
                  context,
                  Tujuan8.routeName,
                  arguments: args,
                );
              },
              child: const Text('Next To Landing Page'),
            ),
          ],
        ),
      ),
    );
  }
}
