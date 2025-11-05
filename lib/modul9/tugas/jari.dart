import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:flutter/services.dart';

class SidikJari extends StatefulWidget {
  const SidikJari({super.key});

  @override
  State<SidikJari> createState() => _SidikJariState();
}

class _SidikJariState extends State<SidikJari> {
  late ValueNotifier<double> _valueNotifier;
  late double counter;

  @override
  void initState() {
    super.initState();
    _valueNotifier = ValueNotifier(0.0);
    counter = 0.0;
  }

  @override
  void dispose() {
    _valueNotifier.dispose();
    super.dispose();
  }

  void incrementCounter() {
    setState(() {
      if (counter < 33) {
        counter++;
        _valueNotifier.value = (counter / 33) * 100;
      }
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0.0;
      _valueNotifier.value = (counter / 33) * 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 119, 210, 145),

      // ✅ Tambahkan AppBar dengan tombol kembali
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 119, 210, 145),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // kembali ke halaman sebelumnya
          },
        ),
        title: const Text(
          "Sidik Jari",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${counter.round()}',
                style: const TextStyle(fontSize: 50, color: Colors.white),
              ),
              SimpleCircularProgressBar(
                progressColors: [Colors.amberAccent.shade400],
                size: 300,
                progressStrokeWidth: 20,
                backStrokeWidth: 10,
                mergeMode: true,
                maxValue: 100,
                animationDuration: 0,
                valueNotifier: _valueNotifier,
                onGetText: (value) {
                  return Text(
                    '${(value.toInt() / 3).round()}',
                    style: const TextStyle(
                        fontSize: 170,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  );
                },
              ),
              const SizedBox(height: 50),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: InkWell(
                  onTap: incrementCounter,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const Icon(
                      Icons.fingerprint,
                      size: 125,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: resetCounter,
        child: const Icon(Icons.refresh_outlined, color: Colors.black),
      ),
    );
  }
}
