import 'dart:developer';

Future<String> fetchUser() async {
  await Future.delayed(Duration(seconds: 2)); // simulate API call
  return 'Alice';
}

void main() async {
  print('Loading...');
  final user = await fetchUser(); // waits here
  print('User: $user'); // User: Alice

  // Run multiple futures in parallel
  final results = await Future.wait([fetchUser(), fetchUser()]);
  print(results); // [Alice, Alice]

  // Error handling
  try {
    final data = await fetchUser();
    log('Data : $data');
  } catch (e) {
    print('Error: $e');
  }
}
