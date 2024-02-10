
import 'package:flutter/material.dart';


class StudentAttendanceScreen extends StatelessWidget {
  // Dummy data for students and their attendance
  final List<Map<String, dynamic>> students = [
    {'name': 'John Doe', 'lecture1': true, 'lecture2': false, 'lecture3': true},
    {'name': 'Jane Smith', 'lecture1': false, 'lecture2': true, 'lecture3': true},
 //   {'name': 'Alice Johnson', 'lecture1': true, 'lecture2': true, 'lecture3': false},
    // Add more student data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        title: Text('Student Attendance'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: DataTable(
            columns: [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Lecture 1')),
              DataColumn(label: Text('Lecture 2')),
          //    DataColumn(label: Text('Lecture 3')),
              // Add more DataColumn widgets as needed for additional lectures
            ],
            rows: students.map((student) {
              return DataRow(cells: [
                DataCell(Text(student['name'])),
                DataCell(_buildAttendanceIcon(student['lecture1'])),
                DataCell(_buildAttendanceIcon(student['lecture2'])),
               // DataCell(_buildAttendanceIcon(student['lecture3'])),
                // Add more DataCell widgets as needed for additional lectures
              ]);
            }).toList(),
          ),
        ),
      ),
    );
  }

  // Helper method to build attendance icon based on attendance status
  Widget _buildAttendanceIcon(bool attended) {
    return attended ? Icon(Icons.check_circle, color: Colors.green) : Icon(Icons.cancel, color: Colors.red);
  }
}