// TODO Implement this library.
import 'package:flutter/material.dart';
import '../../models/tattoo.dart'; // Import the Tattoo model.

class TattooCard extends StatelessWidget {
  final Tattoo tattoo;

  TattooCard({required this.tattoo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(tattoo.imageUrl), // Display the tattoo image.
          Text(tattoo.title, style: TextStyle(fontWeight: FontWeight.bold)), // Display the tattoo title.
          Text(tattoo.description), // Display the tattoo description.
        ],
      ),
    );
  }
}
