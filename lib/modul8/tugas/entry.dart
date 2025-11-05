import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'tujuan.dart';
import 'screen_arguments.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0081c9)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      // Gunakan onGenerateRoute supaya arguments bisa diteruskan
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (_) => const Home());
        }
        if (settings.name == Tujuan.routeName) {
          final args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(builder: (_) => Tujuan(args: args));
        }
        return null; // jika route tidak dikenali
      },
    );
  }
}
