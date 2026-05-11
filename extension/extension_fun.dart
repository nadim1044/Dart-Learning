extension StringExt on String {
  String get capitalize =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';

  bool get isEmail => contains('@') && contains('.');
}

extension IntExt on int {
  Duration get seconds => Duration(seconds: this);

  bool get isEven => this % 2 == 0;
}

void main() async {
  print('hello'.capitalize); // Hello
  print('user@gmail.com'.isEmail); // true
  print(5.isEven); // false

  await Future.delayed(3.seconds); // very readable!
}
