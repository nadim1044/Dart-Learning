// async* and yield to produce stream values
import 'dart:async';

Stream<int> countDown() async* {
  for (int i = 5; i > 0; i--) {
    yield i; // emit one value at a time
    await Future.delayed(Duration(seconds: 1));
  }
}

void main() async {
  // Listen using await for
  await for (final count in countDown()) {
    print(count); // 5, 4, 3, 2, 1
  }

  // StreamController for custom streams
  final controller = StreamController<String>();
  controller.stream.listen((data) => print(data));
  controller.add('Hello');
  controller.add('World');
  controller.close();
}
