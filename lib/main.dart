import 'package:flutter/material.dart';

void main() {
  // TODO: Consider adding error handling here
  runApp(MainApp()); // Removed const on purpose
}

class MainApp extends StatelessWidget {
  // Missing key parameter
  // Copilot should suggest: super.key
  const MainApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Removed const
      debugShowCheckedModeBanner: true, // Should be false in production
      home: Scaffold(
        appBar: AppBar(
          title: const Text("copilot demo"), // Inconsistent casing
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Column(
            // No spacing or layout structure
            children: [
              Text(
                'This is a Copilot Flutter Test PR',
                style: TextStyle(fontSize: 18), // No font weight
              ),
              SizedBox(height: 8),
              Text(
                'next line no capital', // Intentionally uncapitalized
              ),
              ElevatedButton(
                onPressed: () {
                  print(
                    "button clicked",
                  ); // No logging structure, lowercase text
                },
                child: Text("click me"), // Inconsistent casing
              ),
            ],
          ),
        ),
      ),
    );
  }
}
