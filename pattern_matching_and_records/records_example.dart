void main() {
  (String, int) user = ('Nadim', 26);

  // De-structure a record
  var (name, age) = user;
  print('$name is $age'); // Alice is 25

  // Named fields in a record
  var point = (x: 10, y: 20);
  print(point.x); // 10
  print(point.y); // 20

  // Function returning multiple values
  var (token, success) = login();
  print('Token: $token'); // Token: token_abc
  print('Success: $success'); // Success: true
}

(String, bool) login() => ('token_abc', true);
