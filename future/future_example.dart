Future<int> getNumber() {
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
  try {
    final result = await fetchData();
    print(result);
  } catch (e) {
    print("Error: $e");
  }
}
