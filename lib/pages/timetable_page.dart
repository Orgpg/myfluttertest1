import 'package:flutter/material.dart';

class TimetablePage extends StatelessWidget {
  const TimetablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weekly Timetable'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildDayHeader('Monday'),
          const TimetableSlot(
            time: '09:00 - 10:30',
            subject: 'Mobile App Development',
            room: 'Lab 4',
            color: Colors.blue,
          ),
          const TimetableSlot(
            time: '11:00 - 12:30',
            subject: 'Database Systems',
            room: 'Room 201',
            color: Colors.green,
          ),
          const SizedBox(height: 16),
          _buildDayHeader('Tuesday'),
          const TimetableSlot(
            time: '10:00 - 11:30',
            subject: 'Network Security',
            room: 'Lab 2',
            color: Colors.orange,
          ),
          const TimetableSlot(
            time: '13:00 - 14:30',
            subject: 'Professional Practice',
            room: 'Room 305',
            color: Colors.teal,
          ),
        ],
      ),
    );
  }

  Widget _buildDayHeader(String day) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        day,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
        ),
      ),
    );
  }
}

class TimetableSlot extends StatelessWidget {
  final String time;
  final String subject;
  final String room;
  final Color color;

  const TimetableSlot({
    super.key,
    required this.time,
    required this.subject,
    required this.room,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border(
          left: BorderSide(color: color, width: 5),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subject,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                room,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
