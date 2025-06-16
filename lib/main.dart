// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Direct logic in UI — not a best practice
    final now = DateTime.now();
    final greeting = now.hour < 12 ? 'Good Morning!' : 'Good Evening!';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Copilot Review Test')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greeting), // Copilot may suggest moving this logic out
              const SizedBox(height: 10),
              Text(
                'This is a review test',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
