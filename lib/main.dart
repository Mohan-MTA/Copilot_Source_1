import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Removed 'const', bad naming (MyApp vs MainApp)
}

// Changed class name, removed const constructor
class MyApp extends StatelessWidget {
  // TODO: Add key if needed
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Copilot Demo App', // New title
      debugShowCheckedModeBanner: true, // Should be false in prod

      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('copilot demo screen'), // lowercase title
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Should be centered
            children: [
              const SizedBox(height: 20),
              Text(
                'copilot demo page', // no caps
                style: const TextStyle(fontSize: 16), // Small font, no weight
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  print('clicked'); // lowercase, no logging method
                },
                child: const Text('Click here'), // Needs better label
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text("Left item"), // No padding
                  Text("Right item"), // Not spaced
                ],
              ),
              const Text('This should be in a card'), // No card layout
            ],
          ),
        ),
      ),
    );
  }
}
