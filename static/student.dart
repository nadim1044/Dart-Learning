class Student {
  Student({required this.name});

  String name;
  static String collegeName = '';

  static void changeCollegeName() {
    collegeName = 'IIT-Delhi';
  }
}

void main() {
  Student student = Student(name: 'Nadim');
  print('${student.name} ${Student.collegeName}###');
  Student.changeCollegeName();
  print('${student.name} ${Student.collegeName}');
}
