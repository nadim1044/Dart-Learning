class Student {
  String _name = '';

  String get name {
    return _name;
  }

  set hell(String name) {
    _name = name;
  }
}

void main() {
  Student student = Student();
  student.hell = 'Nadim';
  print('Name ${student.name}');
}
