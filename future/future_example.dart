Future<int> getNumber() {
  print('getNumber');
  return Future.value(42);
}

Future<String> fetchData() async {
  print('fetchData wait started');
  await Future.delayed(const Duration(seconds: 3));
  print('fetchData wait ended');
  return "Data loaded";
}

Future<void> fail() {
  return Future.error(Exception("Something went wrong"));
}

void main() async {
  /// Wait will start each future together and return result of each in Array.
  /// If any of them will fail then it will not execute others.
  final waitFuture = await Future.wait([fetchData(), getNumber()]);
  print('Waited $waitFuture');

  /// Any will return the first future which ever will get completed.
  final anyFuture = await Future.any([fetchData(), getNumber()]);
  print('Any $anyFuture');
  try {
    final result = await fetchData();
    print(result);
  } catch (e) {
    print("Error: $e");
  }
}
