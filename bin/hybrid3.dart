import 'dart:convert';
import 'package:hybrid3/students.dart';

void main(List<String> arguments) {
  String json = '''
  [
    {"id":1, "first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"id":2, "first":"Vladimir", "last":"Cezar", "email":"cezarv@algonquincollege.com"},
    {"id":3, "first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"id":4, "first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  List<Map<String, dynamic>> data =
      List<Map<String, dynamic>>.from(jsonDecode(json));
  Students students = Students(data);

  students.sort('last');

  students.plus({
    "id": 5,
    "first": "Harsh",
    "last": "Kumar",
    "email": "harshk@domain.com"
  });

  students.remove('email');
}
