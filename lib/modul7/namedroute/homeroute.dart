import 'package:flutter/material.dart';
import 'tujuanroute.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This Is Home Page', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                side: const BorderSide(width: 1.0, color: Colors.red),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/TujuanRoute');
              },
              child: const Text('Click To Landing Page'),
            ),
          ],
        ),
      ),
    );
  }
}
