import 'package:camera/camera.dart'; // Import the camera package to access camera functionalities
import 'package:flutter/material.dart'; // Import Flutter material package for UI components
import 'package:logger/logger.dart'; // Import the logger package



class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key}); // Add key parameter

  @override
  CameraScreenState createState() => CameraScreenState();
}

class CameraScreenState extends State<CameraScreen> {
  CameraController? _controller; // Controller to manage camera functionalities
  Future<void>? _initializeControllerFuture; // Future to wait for camera initialization
  bool _isRecording = false; // Track whether video recording is in progress
  final Logger _logger = Logger(); // Create a logger instance

  @override
  void initState() {
    super.initState();
    _initializeCamera(); // Initialize the camera when the widget is created
  }

  // Method to initialize the camera
  Future<void> _initializeCamera() async {
    // Get a list of available cameras
    final cameras = await availableCameras();
    
    // Create a CameraController for the first available camera
    _controller = CameraController(
      cameras[0], // Select the first camera
      ResolutionPreset.max, // Set the resolution for video recording
      enableAudio: true, // Enable audio recording
    );

    // Initialize the controller and store the future
    _initializeControllerFuture = _controller!.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is removed from the widget tree
    _controller?.dispose();
    super.dispose();
  }

  // Method to start video recording
  Future<void> _startVideoRecording() async {
    // Check if video recording is not already in progress
    if (!_controller!.value.isRecordingVideo) {
      // Get the directory to save the video
      // Create a file path for the video using the current timestamp?

      try {
        // Start recording video and save it to the specified path
        await _controller!.startVideoRecording(); // Use named parameter if required

        // Update the state to indicate that recording has started
        setState(() {
          _isRecording = true; // Set recording state to true
        });
      } on CameraException catch (e) {
      // Log the error with the exception details
      _logger.e('Error starting video recording: ${e.description}', error: e);
    }
    }
  }

  // Method to stop video recording
  Future<void> _stopVideoRecording() async {
    // Check if video recording is in progress
    if (_controller!.value.isRecordingVideo) {
      try {
        // Stop the video recording
        await _controller!.stopVideoRecording();

        // Update the state to indicate that recording has stopped
        setState(() {
          _isRecording = false; // Set recording state to false
        });
      } on CameraException catch (e) {
        // Handle any exceptions that occur during stopping
        _logger.e('Error stopping video recording: ${e.description}', error: e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Camera')), // App bar with title
      body: FutureBuilder<void>(
        // Build the UI based on the camera initialization future
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          // Check if the camera has been initialized
          if (snapshot.connectionState == ConnectionState.done) {
            return Stack(
              children: [
                CameraPreview(_controller!), // Display the camera preview
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: FloatingActionButton(
                    // Button to start/stop video recording
                    onPressed: _isRecording ? _stopVideoRecording : _startVideoRecording,
                    child: Icon(_isRecording ? Icons.stop : Icons.videocam), // Change icon based on recording state
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: GestureDetector(
                    // Detect tap down to focus the camera
                    onTapDown: (details) {
                      _focusCamera(details.localPosition); // Focus at the tapped position
                    },
                    child: const CircleAvatar(radius: 30, backgroundColor: Colors.red), // Circle to indicate focus action
                  ),
                ),
              ],
            );
          } else {
            // Show a loading spinner while the camera is initializing
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  // Method to set the focus point of the camera
  void _focusCamera(Offset offset) {
    // Calculate the focus point based on the tap position
    final x = offset.dx / MediaQuery.of(context).size.width; // Normalize x coordinate
    final y = offset.dy / MediaQuery.of(context).size.height; // Normalize y coordinate
    
    // Set the focus point using the normalized coordinates
    _controller!.setFocusPoint(Offset(x, y));
  }
}