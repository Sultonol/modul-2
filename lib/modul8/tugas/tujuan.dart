import 'package:flutter/material.dart';
import 'screen_arguments.dart';
import 'package:flutter/services.dart';

class Tujuan extends StatelessWidget {
  final ScreenArguments args; // 1️⃣ wajib

  const Tujuan({super.key, required this.args}); // 2️⃣ wajib diisi
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return Scaffold(
      backgroundColor: const Color(0xFF94A29),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(args.cover),
              Text(args.title),
              Text(args.description),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.blue,
                  child: const Text('Kembali'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
