import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture and Name
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/Profile.jpg'), // Replace with actual user image
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Vaishnavi More', // Replace with user's name
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'vaishnavi@example.com', // Replace with user's email
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // Profile Details Section
            Text(
              'Personal Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.blue),
              title: Text('Phone'),
              subtitle: Text('+91 9004941513'), // Replace with user's phone number
            ),
            ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.blue),
              title: Text('Date of Birth'),
              subtitle: Text('30th September 2004'), // Replace with user's DOB
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blue),
              title: Text('Address'),
              subtitle: Text('123, Main Street, City, Country'), // Replace with user's address
            ),
            SizedBox(height: 20),
            // Buttons for Editing Profile and Changing Password
            Center(
              child: Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to Edit Profile Page
                    },
                    icon: Icon(Icons.edit, color: Colors.white),
                    label: Text('Edit Profile'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      backgroundColor: Colors.blue.shade800,
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to Change Password Page
                    },
                    icon: Icon(Icons.lock, color: Colors.white),
                    label: Text('Change Password'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      backgroundColor: Colors.red.shade800,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
