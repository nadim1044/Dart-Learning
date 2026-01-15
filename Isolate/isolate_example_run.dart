import 'dart:isolate';

void heavyTask() async {
  int sum = 0;
  await Future.delayed(Duration(seconds: 5));
  for (int i = 0; i < 1e7; i++) {
    sum += i;
  }
  print("Result from isolate: $sum");
}

void main() async {
  print(DateTime.now());
  await Isolate.run(heavyTask);
  print(DateTime.now());
}
