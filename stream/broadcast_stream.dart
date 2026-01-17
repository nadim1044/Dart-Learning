import 'dart:async';

void main() {
  // Create a StreamController for a broadcast stream
  final controller = StreamController<String>.broadcast();

  // Listener 1: UI Notification
  controller.stream.listen((msg) => print("UI: New message - $msg"));

  // Listener 2: Logger
  controller.stream.listen((msg) => print("LOG: $msg stored in database"));

  // Using Slicing Methods:
  controller.stream
      .take(1) // Method: Only take the very first message then stop
      .listen((msg) => print("FIRST MESSAGE ONLY: $msg"));

  // Adding data via the Sink
  controller.sink.add("Hello everyone!");
  controller.sink.add("Welcome to the 2026 Flutter Summit.");

  // Method: Check if empty (returns a Future)
  controller.stream.isEmpty.then((empty) => print("Is empty: $empty"));

  // Clean up
  // controller.close();
}
