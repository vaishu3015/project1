import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // General Settings Section
          _buildSectionTitle('General'),
          SwitchListTile(
            title: Text('Enable Notifications'),
            subtitle: Text('Turn app notifications on or off'),
            value: true, // Replace with state variable
            onChanged: (bool value) {
              // Handle toggle logic
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            subtitle: Text('Change app language'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to language settings
            },
          ),
          Divider(),

          // Gesture Settings Section
          _buildSectionTitle('Gestures'),
          ListTile(
            leading: Icon(Icons.gesture),
            title: Text('Configure Gestures'),
            subtitle: Text('Customize hand gestures'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to gesture settings
            },
          ),
          Slider(
            value: 0.5, // Replace with state variable
            onChanged: (double value) {
              // Handle slider logic
            },
            min: 0.0,
            max: 1.0,
            divisions: 10,
            label: 'Sensitivity',
          ),
          Text('Gesture Sensitivity', style: TextStyle(color: Colors.grey)),

          Divider(),

          // Appearance Settings Section
          _buildSectionTitle('Appearance'),
          ListTile(
            leading: Icon(Icons.palette),
            title: Text('Theme'),
            subtitle: Text('Light / Dark mode'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to theme settings
            },
          ),
          Divider(),

          // Account Settings Section
          _buildSectionTitle('Account'),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Change Password'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to change password page
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              // Handle logout logic
            },
          ),
        ],
      ),
    );
  }

  // Widget for Section Titles
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
