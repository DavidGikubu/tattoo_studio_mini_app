import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart'; // Import the home screen.

void main() {
  runApp(MyApp()); // Launch the app.
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tattoo Studio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Set the home screen as the entry point.
    );
  }
}
