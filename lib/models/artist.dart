// Defines a class to represent an Artist.
class Artist {
  final String name; // The name of the artist.
  final String bio; // A short biography.
  final String profileImage; // URL of the artist's profile image.
  final List<String> tattoos; // List of tattoo image URLs done by the artist.

  Artist({
    required this.name,
    required this.bio,
    required this.profileImage,
    required this.tattoos,
  });
}
