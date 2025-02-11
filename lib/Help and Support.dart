import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Help and Support Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HelpAndSupportPage(),
    );
  }
}

class HelpAndSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help and Support'),
        backgroundColor: Colors.blueAccent,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Help Section
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'How to Use Gesture Recognition',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Gesture recognition allows you to control the virtual mouse using hand gestures detected by your device\'s camera. Here\'s how you can get started:',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              // Steps Section
              buildStepSection(
                'Step 1: Activating Gesture Recognition',
                '1. Open the app and sign in.\n2. Press "Start Gesture Recognition" on the home page.\n3. The camera will start tracking your hand gestures.',
              ),
              buildStepSection(
                'Step 2: Supported Gestures and Their Actions',
                '• Swipe Left/Right: Move cursor horizontally\n• Swipe Up/Down: Move cursor vertically\n• Pinch: Click on an item\n• Open Hand: Scroll\n• Fist: Right-click\n• Thumb Up/Down: Change volume/brightness',
              ),
              buildStepSection(
                'Step 3: Tips for Effective Gesture Control',
                '• Ensure hands are within the camera view.\n• Keep lighting adequate for clear tracking.\n• Perform smooth and steady hand movements.',
              ),

              // Support Section
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Need Assistance? Contact Us!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Text(
                'Support Options:',
                style: TextStyle(fontSize: 18, color: Colors.blueAccent),
              ),
              SizedBox(height: 10),
              buildSupportOption(
                Icons.chat,
                'Live Chat Support',
                'Chat with our support team (9 AM - 6 PM)',
                () {
                  // Implement live chat functionality here
                },
              ),
              buildSupportOption(
                Icons.email,
                'Email Support',
                'Email us at support@example.com',
                () {
                  // Implement email functionality here
                },
              ),
              buildSupportOption(
                Icons.help,
                'FAQs',
                'Browse common issues and solutions',
                () {
                  // Implement FAQ page navigation here
                },
              ),

              SizedBox(height: 20),
              Text(
                'Common Issues and Solutions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '• Gesture recognition not working?\n   - Check camera permissions.\n   - Ensure no obstruction to the camera.\n\n• Gestures not responding?\n   - Recalibrate gestures.\n   - Restart the app for reset.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 40),
              Text(
                'Still Facing Issues?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Contact us for more help via live chat, email, or FAQs!',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStepSection(String title, String content) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blueAccent, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          SizedBox(height: 10),
          Text(
            content,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget buildSupportOption(
      IconData icon, String title, String subtitle, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Icon(icon, color: Colors.blueAccent),
          title: Text(title, style: TextStyle(fontSize: 18)),
          subtitle: Text(subtitle, style: TextStyle(fontSize: 14)),
        ),
      ),
    );
  }
}
