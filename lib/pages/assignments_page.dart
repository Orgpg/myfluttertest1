import 'package:flutter/material.dart';

class AssignmentsPage extends StatelessWidget {
  const AssignmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignments'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          AssignmentTile(
            title: 'UI Design Prototypes',
            course: 'Mobile App Development',
            dueDate: 'Tomorrow, 11:59 PM',
            isUrgent: true,
          ),
          AssignmentTile(
            title: 'SQL Optimization Lab',
            course: 'Database Systems',
            dueDate: 'Friday, Oct 27',
            isUrgent: false,
          ),
          AssignmentTile(
            title: 'Network Traffic Analysis',
            course: 'Network Security',
            dueDate: 'Next Monday',
            isUrgent: false,
          ),
          AssignmentTile(
            title: 'Requirement Specification',
            course: 'Software Engineering',
            dueDate: 'Next Friday',
            isUrgent: false,
          ),
        ],
      ),
    );
  }
}

class AssignmentTile extends StatelessWidget {
  final String title;
  final String course;
  final String dueDate;
  final bool isUrgent;

  const AssignmentTile({
    super.key,
    required this.title,
    required this.course,
    required this.dueDate,
    required this.isUrgent,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: isUrgent ? Colors.red[50] : Colors.blue[50],
          child: Icon(
            Icons.assignment_outlined,
            color: isUrgent ? Colors.red : Colors.blue,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(course),
            const SizedBox(height: 4),
            Text(
              'Due: $dueDate',
              style: TextStyle(
                color: isUrgent ? Colors.red : Colors.grey[600],
                fontWeight: isUrgent ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}
