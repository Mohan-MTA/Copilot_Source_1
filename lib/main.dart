import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // 🔧 Added to improve UI
      home: Scaffold(
        backgroundColor: Colors.white, // 🎨 New line to enhance visuals
        body: Center(
          child: Text(
            '🚀 Welcome to Copilot Flutter Demo!',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
    );
  }
}
