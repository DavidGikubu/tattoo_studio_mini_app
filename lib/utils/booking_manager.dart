// Simple utility to manage booking information.
class BookingManager {
  static final List<Map<String, String>> _bookings = []; // List to store bookings.

  // Method to add a new booking.
  static void addBooking(String artistName, String date, String time) {
    _bookings.add({
      'artistName': artistName,
      'date': date,
      'time': time,
    });
  }

  // Method to retrieve all bookings.
  static List<Map<String, String>> getBookings() {
    return _bookings;
  }
}
