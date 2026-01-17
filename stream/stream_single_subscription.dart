import 'dart:async';

Stream<int> downloadFile(int totalBytes) async* {
  for (int i = 1; i <= totalBytes; i++) {
    await Future.delayed(Duration(milliseconds: 500)); // Simulate delay
    yield i; // Emit the current byte
  }
}

void main() async {
  final stream = downloadFile(10);

  // Using Transformation Methods:
  stream
      .where((byte) => byte % 2 == 0) // Method: Filter only even bytes
      .map((byte) => "Downloaded $byte MB") // Method: Convert int to String
      .listen(
        (data) => print(data),
        onDone: () => print("Download Complete!"),
      );

  // Note: Attempting to listen again would throw an error.
}
