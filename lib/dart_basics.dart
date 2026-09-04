// 1. Variables & Null Safety
String clubName = 'App Dev Club';
String? nullableUser; // Can hold a value or be null

// 2. Class
class Student {
  String name;
  Student(this.name);
}

// 3. Async/Await Function
Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  print('Data loaded successfully!');
}

void main() async {
  print('Welcome to $clubName');
  
  // Null safety check
  print('User: ${nullableUser ?? "Guest User"}');
  
  // Class instance
  var student = Student('Kanishk Saini');
  print('Student Name: ${student.name}');
  
  // Asynchronous operation
  await fetchData();
}