class Singleton {
  static Singleton? _instance; // Private instance variable

  // Private constructor
  Singleton._();

  // Factory constructor to provide access to the singleton instance
  factory Singleton.getInstance() {
    if (_instance == null) {
      _instance = Singleton._(); // Creating an instance using the private constructor
    }
    return _instance!;
  }
}

void main() {
  // You cannot create an instance using the private constructor
  //Singleton obj = Singleton(); //The class 'Singleton' doesn't have an unnamed constructor
  // You can get an instance of the singleton using the factory constructor
  Singleton instance1 = Singleton.getInstance();
  print('Object Name : ${instance1.hashCode}');

  Singleton instance2 = Singleton.getInstance();
  print('Object Name : ${instance2.hashCode}');
}
// O/P :
// Object Name : 595456015
// Object Name : 595456015