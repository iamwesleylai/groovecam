import 'package:flutter/material.dart'; // Flutter's core package for building UI

// Define a new widget called AudioPlayerPage, which is a StatelessWidget
class AudioPlayerPage extends StatelessWidget {
  // Constructor for the widget
  const AudioPlayerPage({super.key});

  // Create a controller using GetX to manage the audio player
  // final controller = Get.put(PlayerController());

  // Placeholder method for skipping to the next audio track
  void _skipToNext() {
    // This will be implemented later
  }

  // Placeholder method for skipping to the previous audio track or restarting
  void _skipToPreviousOrStart() {
    // This will be implemented later
  }

  // Build method to create the UI of the page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background color of the page
      backgroundColor: const Color(0xFF5D0605),
      // Create an app bar with a title
      appBar: AppBar(
        title: const Text('Audio Player'),
        backgroundColor: const Color(0xFFFA9F42),
      ),
      // Center the content on the page
      body: Center(
        // Create a row of buttons for audio control
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
          children: [
            // Button to skip to the previous track or restart
            ElevatedButton(
              onPressed: _skipToPreviousOrStart,
              child: const Icon(Icons.skip_previous), // Icon for the button
            ),
            const Padding(padding: EdgeInsets.all(10)), // Space between buttons
            // Button with a funny icon
            ElevatedButton(
              onPressed: () {
                // Placeholder for play/pause functionality
              },
              child: const Icon(Icons.sentiment_very_satisfied), // Random funny icon
            ),
            const Padding(padding: EdgeInsets.all(10)), // Space between buttons
            // Button to skip to the next track
            ElevatedButton(
              onPressed: _skipToNext,
              child: const Icon(Icons.skip_next), // Icon for the button
            ),
          ],
        ),
      ),
    );
  }
}

// Main function to run the app
void main() {
  runApp(const MaterialApp(
    home: AudioPlayerPage(), // Set AudioPlayerPage as the home screen
  ));
}