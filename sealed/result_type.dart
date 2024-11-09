sealed class Result {}

class Success<T> extends Result {
  Success(this.data);
  final T data;
}

class Failure extends Result {
  Failure (this.message);
  final String message;
}

//  Result result = Success('Succeed');
//   switch(result) {
//
//     case Success():
//       print('Success : ${result.data}');
//     case Failure():
//       print('Failure : ${result.message}');
//   }
// O/p : Succeed