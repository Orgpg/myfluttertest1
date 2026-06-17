import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          _buildChatTile(
            'Dr. Smith',
            'Don\'t forget the assignment deadline tomorrow.',
            '10:30 AM',
            true,
          ),
          _buildChatTile(
            'Admin Office',
            'Your tuition fee receipt is ready.',
            'Yesterday',
            false,
          ),
          _buildChatTile(
            'Computing Club',
            'New meeting scheduled for Friday.',
            'Yesterday',
            false,
          ),
          _buildChatTile(
            'Prof. Johnson',
            'I have reviewed your project proposal.',
            'Monday',
            false,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.edit, color: Colors.white),
      ),
    );
  }

  Widget _buildChatTile(String name, String message, String time, bool isUnread) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.indigo[100],
        child: Text(name[0]),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: isUnread ? FontWeight.bold : FontWeight.normal),
      ),
      subtitle: Text(
        message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: isUnread ? Colors.black87 : Colors.grey,
          fontWeight: isUnread ? FontWeight.w500 : FontWeight.normal,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          if (isUnread)
            Container(
              margin: const EdgeInsets.only(top: 4),
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Colors.indigo,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
      onTap: () {},
    );
  }
}
