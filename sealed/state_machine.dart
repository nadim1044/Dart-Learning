sealed class ConnectionState {}

class Connecting extends ConnectionState {}

class Connected extends ConnectionState {
  final String address;
  Connected(this.address);
}

class Disconnected extends ConnectionState {}



//ConnectionState result = Connected('12.12.33.22');
//   switch(result) {
//     case Connecting():
//      print('Connecting');
//     case Connected():
//       print('Connected ${result.address}');
//     case Disconnected():
//       print('Connecting');
//   }
// O/P : Connected 12.12.33.22