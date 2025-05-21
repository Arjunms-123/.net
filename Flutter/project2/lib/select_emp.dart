import 'package:flutter/material.dart';
import 'package:project2/api_communicate.dart';
import 'package:project2/employee.dart';

class EmployeeTable extends StatefulWidget {
  const EmployeeTable({super.key});

  @override
  State<EmployeeTable> createState() => _EmployeeTableState();
}

class _EmployeeTableState extends State<EmployeeTable> {
  late Future<List<Employee>> futureEmployees;
  @override
  void initState() {
    super.initState();
    futureEmployees = fetchEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee List'),
      ),
      body: FutureBuilder(
        future: futureEmployees,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error:${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No employees found'));
          } else {
            return DataTable(
              columns: const [
                DataColumn(label: Text('Id')),
                DataColumn(label: Text('Name')),
              ],
              rows: snapshot.data!.map((Employee) {
                return DataRow(cells: [
                  DataCell(Text(Employee.Id.toString())),
                  DataCell(Text(Employee.Name)),
                ]);
              }).toList(),
            );
          }
        },
      ),
    );
  }
}
