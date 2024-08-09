import 'package:get/get.dart'; // GetX package for state management
import 'package:on_audio_query/on_audio_query.dart'; // Package for querying audio files
import 'package:permission_handler/permission_handler.dart'; // Package for handling permissions

// check out spotify api and permissions
// make custom backend to use any service, go for each service

// Define a controller class to manage audio player logic
class PlayerController extends GetxController {
  
  // Create an instance of OnAudioQuery to interact with audio files
  final audioQuery = OnAudioQuery();

  // This method is called when the controller is initialized
  @override
  void onInit() {
    super.onInit(); // Call the parent class's onInit method

    // Check for necessary permissions
    checkPermission();
  }
  
  // Method to check and request storage permission
  checkPermission() async {
    // Request storage permission from the user
    var perm = await Permission.storage.request();

    // If permission is granted, query songs
    if (perm.isGranted) {
      return audioQuery.querySongs(
        ignoreCase: true, // Ignore case when querying
        orderType: OrderType.ASC_OR_SMALLER, // Order songs in ascending order
        sortType: null, // No specific sort type
        uriType: UriType.EXTERNAL, // Query external storage
      );
    } else {
      // If permission is not granted, ask again
      checkPermission();
    }
  }
}