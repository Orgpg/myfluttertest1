import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          _buildSectionHeader('Account'),
          _buildSettingsTile(Icons.person_outline, 'Profile Information', 'Name, Email, Student ID'),
          _buildSettingsTile(Icons.lock_outline, 'Change Password', 'Keep your account secure'),
          const Divider(),
          _buildSectionHeader('Notifications'),
          _buildSettingsTile(Icons.notifications_active_outlined, 'Push Notifications', 'Manage alerts for classes and tasks'),
          _buildSettingsTile(Icons.email_outlined, 'Email Notifications', 'Daily summary and updates'),
          const Divider(),
          _buildSectionHeader('Preferences'),
          _buildSettingsTile(Icons.dark_mode_outlined, 'Theme Mode', 'Light / Dark / System'),
          _buildSettingsTile(Icons.language_outlined, 'Language', 'English (US)'),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.help_outline, color: Colors.indigo),
            title: const Text('Help & Support'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info_outline, color: Colors.indigo),
            title: const Text('About App'),
            onTap: () {},
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildSettingsTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: Colors.indigo),
      title: Text(title),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 12)),
      trailing: const Icon(Icons.chevron_right, size: 20),
      onTap: () {},
    );
  }
}
