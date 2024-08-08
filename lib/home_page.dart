﻿import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5D0605),
      appBar: AppBar(
        title: const Text(
          'GrooveCam', // Display the app name
          style: TextStyle(
            fontFamily: 'Dosis',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFF5D0605), // Set the text color
          ),
        ),
        backgroundColor: const Color(0xFFFA9F42),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to GrooveCam!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: const Color(0xFFFA9F42),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 20),
              Text(
                'Capture your groove with style.',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: const Color(0xFFFA9F42),
                    ),
              ),
              const SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add camera functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFA9F42),
                        foregroundColor: const Color(0xFF5D0605),
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      child: const Text('Start Grooving'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/audio_player');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFA9F42),
                        foregroundColor: const Color(0xFF5D0605),
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      child: const Text('Audio Player'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}