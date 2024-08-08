import 'package:flutter/material.dart';

class AudioPlayerPage extends StatefulWidget {
  const AudioPlayerPage({super.key});

  @override
  AudioPlayerPageState createState() => AudioPlayerPageState();
}

class AudioPlayerPageState extends State<AudioPlayerPage> {
  bool _isPlaying = false;

  void _togglePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  void _skipToNext() {
    // Placeholder for skip to next functionality
  }

  void _skipToPreviousOrStart() {
    // Placeholder for skip to previous or restart functionality
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5D0605),
      appBar: AppBar(
        title: const Text('Audio Player'),
        backgroundColor: const Color(0xFFFA9F42),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _skipToPreviousOrStart,
              child: const Icon(Icons.skip_previous),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              onPressed: _togglePlayPause,
              child: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              onPressed: _skipToNext,
              child: const Icon(Icons.skip_next),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: AudioPlayerPage(),
  ));
}