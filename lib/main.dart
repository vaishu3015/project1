import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'login.dart';
import 'register_page.dart';
import 'home.dart';
import 'settingPage.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// FirebaseOptions for web
// FirebaseOptions for web
const firebaseOptions = FirebaseOptions(
  apiKey: "AIzaSyCmYKm3ipK9KIY6qhXkrykdWuDE3l9JWCo",
  authDomain: "final-set-c7d35.firebaseapp.com",
  projectId: "final-set-c7d35",
  storageBucket: "final-set-c7d35.firebasestorage.app",
  messagingSenderId: "708798575417",
  appId: "1:708798575417:web:982148cfcf11fa63d82ee8",
  measurementId: "your-measurement-id",
);

// Main entry point
void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures Firebase initializes properly
  await Firebase.initializeApp(
      options:
          firebaseOptions); // Initialize Firebase with the specified options
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login', // Start from login page
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        '/settings': (context) => SettingsPage(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) =>
              LoginPage(), // Default to login if route not found
        );
      },
    );
  }
}
