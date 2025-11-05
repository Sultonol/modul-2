import 'package:flutter/material.dart';

class TujuanRoute extends StatelessWidget {
  const TujuanRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Landing Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This Is Landing Page', style: TextStyle(fontSize: 20)),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                side: const BorderSide(width: 1.0, color: Colors.red),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back To Home'),
            ),
          ],
        ),
      ),
    );
  }
}
