// TODO Implement this library.
import 'package:flutter/material.dart';
import '../../models/tattoo.dart'; // Import the Tattoo model.
import '../../utils/image_urls.dart'; // Import the image URLs.
import '../../widgets/tattoo_card.dart'; // Import the tattoo card widget.

class GalleryScreen extends StatelessWidget {
  final List<Tattoo> tattoos = [
    // Sample list of tattoos.
    Tattoo(title: 'Dragon', imageUrl: tattooImages[0], description: 'A fierce dragon tattoo.'),
    Tattoo(title: 'Phoenix', imageUrl: tattooImages[1], description: 'A beautiful phoenix rising.'),
    Tattoo(title: 'Tiger', imageUrl: tattooImages[2], description: 'A roaring tiger tattoo.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tattoo Gallery'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Two items per row.
        ),
        itemCount: tattoos.length,
        itemBuilder: (context, index) {
          return TattooCard(tattoo: tattoos[index]); // Use the tattoo card widget.
        },
      ),
    );
  }
}
