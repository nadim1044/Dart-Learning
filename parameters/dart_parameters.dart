class DartParameters {
  static void namedParams({required String name}) {
    print('Named Params : $name');
  }

  static void optionalParams([String? name]) {
    print('optionalParams : $name');
  }

  static void positionalParams(String? name) {
    print('positionalParams : $name');
  }

  static void positionalParamsWithNamed(String name, {required String title}) {
    print('positionalParamsWithNamed : $name : $title');
  }

  static void positionalParamsWithOptional(String name, [String? title]) {
    print('positionalParamsWithOptional : $name : $title');
  }
}

void main() {
  DartParameters.namedParams(name: 'Nadim');
  DartParameters.optionalParams();
  DartParameters.positionalParams('');
  DartParameters.positionalParamsWithNamed('Nadim', title: 'Dart title');
  DartParameters.positionalParamsWithOptional('Nadim', 'Dart title');
}
