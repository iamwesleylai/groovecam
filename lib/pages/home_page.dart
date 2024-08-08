import 'package:flutter/material.dart';
import 'package:groovecam_app/consts/colors.dart';
import 'package:groovecam_app/consts/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        title: Text(
          'GrooveCam', // Display the app name
          style: logoStyle(
            size: 30,
            color: AppColors.secondary, // Set the text color
          ),
        ),
        backgroundColor: AppColors.primary,
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
                style: headlineStyle()
              ),
              const SizedBox(height: 20),
              Text(
                'Capture your groove with style.',
                style: normalStyle()
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
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.secondary,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        textStyle: buttonStyle(),
                      ),
                      child: const Text('Start Grooving'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/audio_player');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.secondary,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        textStyle: buttonStyle(),
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