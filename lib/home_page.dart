import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5D0605),
      appBar: AppBar(
        title: const Text('GrooveCam'),
        backgroundColor: const Color(0xFF5D0605),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to GrooveCam!',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: const Color(0xFF5D0605),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 20),
              Text(
                'Capture your groove with style.',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.grey[700],
                    ),
              ),
              const SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add camera functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFA9F42), // Updated property name
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Text('Start Grooving'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}