// TODO Implement this library.
import 'package:flutter/material.dart';
import '../../models/artist.dart'; // Import the Artist model.
import '../../screens/artists/artist_detail_screen.dart'; // Import the artist detail screen.

class ArtistCard extends StatelessWidget {
  final Artist artist;

  ArtistCard({required this.artist});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(artist.profileImage), // Display the artist's profile image.
      ),
      title: Text(artist.name), // Display the artist's name.
      subtitle: Text(artist.bio), // Display the artist's bio.
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ArtistDetailScreen(artist: artist)), // Navigate to the artist detail screen.
        );
      },
    );
  }
}
