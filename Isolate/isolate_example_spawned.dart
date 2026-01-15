import 'dart:isolate';

void heavyTask(SendPort sendPort) async {
  int sum = 0;
  await Future.delayed(Duration(seconds: 5));
  for (int i = 0; i < 1e7; i++) {
    sum += i;
  }
  sendPort.send(sum);
}

void main() async {
  final receivePort = ReceivePort();

  print(DateTime.now());

  await Isolate.spawn(heavyTask, receivePort.sendPort);

  print(DateTime.now());
  receivePort.listen((message) {
    print("Result from isolate: $message");
    print(DateTime.now());
    receivePort.close();
  });
}
