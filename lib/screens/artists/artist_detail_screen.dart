// lib/screens/artists/artist_detail_screen.dart

import 'package:flutter/material.dart';
import '../../models/artist.dart'; // Import the Artist model.
import '../../utils/booking_manager.dart'; // Import the booking manager.
import '../booking/booking_screen.dart'; // Import the booking screen.

class ArtistDetailScreen extends StatelessWidget {
  final Artist artist;

  ArtistDetailScreen({required this.artist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(artist.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display artist's profile image.
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(artist.profileImage),
              ),
            ),
            SizedBox(height: 16),
            // Display artist's name.
            Text(
              artist.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Display artist's bio.
            Text(
              artist.bio,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Button to navigate to the booking screen.
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingScreen(artist: artist)),
                );
              },
              child: Text('Book Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}
