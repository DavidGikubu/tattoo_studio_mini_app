import 'package:flutter/material.dart';
import '../artists/artists_screen.dart'; // Import artists screen.
import '../gallery/gallery_screen.dart'; // Import gallery screen.
import '../../widgets/search_bar.dart'; // Import search bar widget.

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tattoo Studio Home'),
        actions: [
          SearchBar(),  // Include the search bar in the app bar.
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Button to navigate to the artists screen.
            ElevatedButton(
              child: Text('Choose Artist'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ArtistsScreen()));
              },
            ),
            // Button to navigate to the tattoo gallery.
            ElevatedButton(
              child: Text('Tattoo Gallery'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GalleryScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
