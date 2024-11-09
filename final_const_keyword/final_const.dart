class FinalConstExplanation {
  /// // Here you can assign const without
  /// static as const is not going to change in life cycle then why to make it non static.
  static  const a= 10;
  final int daysInAWeek = 7;


  checkFinal() {
    //daysInAWeek = 10; //'daysInAWeek' can't be used as a setter because it's final
    // const time = DateTime.now(); // works
  }

  checkConst() {

    // const time = DateTime.now(); // Error
    //a = 10; //Constant variables can't be assigned a value.

    const b = 10;
    //b=20; //Constant variables can't be assigned a value.
  }
}

final class AppDatabase {

}
///The type 'LocalDatabase' must be 'base', 'final' or 'sealed' because the supertype 'AppDatabase' is 'final'.
/*
class LocalDatabase extends AppDatabase {

}*/
