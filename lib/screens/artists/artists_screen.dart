// TODO Implement this library.
// lib/screens/artists/artists_screen.dart

import 'package:flutter/material.dart';
import '../../models/artist.dart'; // Import the Artist model.
import '../../utils/image_urls.dart'; // Import the image URLs.
import '../../widgets/artist_card.dart'; // Import the artist card widget.

class ArtistsScreen extends StatelessWidget {
  final List<Artist> artists = [
    // Sample list of artists.
    Artist(name: 'Alice', bio: 'Expert in modern tattoos', profileImage: artistImages[0], tattoos: []),
    Artist(name: 'Bob', bio: 'Specializes in traditional tattoos', profileImage: artistImages[1], tattoos: []),
    Artist(name: 'Charlie', bio: 'Best for geometric designs', profileImage: artistImages[2], tattoos: []),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose an Artist'),
      ),
      body: ListView.builder(
        itemCount: artists.length,
        itemBuilder: (context, index) {
          return ArtistCard(artist: artists[index]); // Use the artist card widget.
        },
      ),
    );
  }
}
