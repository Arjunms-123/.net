import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project2/employee.dart';

Future<List<Employee>> fetchEmployees() async {
  final response = await http.get(Uri.parse('https://localhost:7050/GetAllempdetailsrepo'));

  if (response.statusCode == 200) {
    List<dynamic> jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Employee.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load Employees');
  }
}
