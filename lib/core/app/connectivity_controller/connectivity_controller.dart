import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

/// A class that provides functionality to check and listen for internet connectivity changes.
class ConnectivityController {
  // Creates a private constructor to prevent creating multiple instances of the class.
  ConnectivityController._();

  // Creates a singleton instance of the ConnectivityController class.
  static final ConnectivityController _instance = ConnectivityController._();

  // Provides a getter to access the singleton instance.
  static ConnectivityController get instance => _instance;

  // A ValueNotifier that holds the current internet connectivity state (true - connected, false - disconnected).
  ValueNotifier<bool> isConnected = ValueNotifier(true);

  /// Initializes the connectivity controller by checking the initial connectivity state and listening for changes.
  Future<void> init() async {
    // Checks the initial connectivity using the Connectivity class.
    final result = await Connectivity().checkConnectivity();
    // Updates the isConnected value based on the initial connectivity result.
    isInternetConnected(result);
    // Listens for future connectivity changes using onConnectivityChanged stream.
    Connectivity().onConnectivityChanged.listen(isInternetConnected);
  }

  /// Checks the connectivity result and updates the isConnected value accordingly.
  bool isInternetConnected(List<ConnectivityResult> result) {
    if (result.contains(ConnectivityResult.none)) {
      // If no connectivity is found, updates isConnected to false.
      isConnected.value = false;
      return false;
    } else if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      isConnected.value = true;
      return true;
    } else {
      // Handles unexpected connectivity results by setting isConnected to false.
      isConnected.value = false;
      return false;
    }
  }
}

 /***
  * 
  Understanding the ConnectivityController Class
Purpose
The ConnectivityController class is designed to monitor and manage internet connectivity status within a Flutter application. It provides a simple way to determine if the device is currently connected to the internet and to react to changes in connectivity.

How it Works
Singleton Pattern:

The class uses the singleton pattern to ensure there's only one instance of the ConnectivityController throughout the application. This is achieved by having a private constructor and a static instance.
The instance getter provides a convenient way to access this single instance.
Connectivity Tracking:

A ValueNotifier<bool> named isConnected is used to store the current connectivity status. true indicates an internet connection, while false means no connection.
The init() method:
Checks the initial connectivity status using the Connectivity plugin.
Updates the isConnected value based on the initial check.
Starts listening to connectivity changes using onConnectivityChanged.
The isInternetConnected() method:
Takes a list of ConnectivityResult as input.
Checks if the list contains ConnectivityResult.none (no connection). If so, sets isConnected to false and returns false.
Checks if the list contains ConnectivityResult.mobile or ConnectivityResult.wifi (connected). If so, sets isConnected to true and returns true.
For any other cases, sets isConnected to false and returns false.
Usage
To use the ConnectivityController:

Import the ConnectivityController class.
Access the singleton instance using ConnectivityController.instance.
Call init() to start monitoring connectivity.
Subscribe to the isConnected ValueNotifier to react to changes in connectivity status.
  */