// TODO Implement this library.
import 'package:flutter/material.dart';
import '../../models/artist.dart'; // Import the Artist model.
import '../../utils/booking_manager.dart'; // Import the booking manager.

class BookingScreen extends StatefulWidget {
  final Artist artist;

  BookingScreen({required this.artist});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formKey = GlobalKey<FormState>(); // Key to identify the form.
  final _dateController = TextEditingController(); // Controller for the date input.
  final _timeController = TextEditingController(); // Controller for the time input.

  @override
  void dispose() {
    _dateController.dispose(); // Dispose of the controller when not needed.
    _timeController.dispose(); // Dispose of the controller when not needed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book with ${widget.artist.name}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Input for booking date.
              TextFormField(
                controller: _dateController,
                decoration: InputDecoration(labelText: 'Date'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a date';
                  }
                  return null;
                },
              ),
              // Input for booking time.
              TextFormField(
                controller: _timeController,
                decoration: InputDecoration(labelText: 'Time'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a time';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              // Button to confirm the booking.
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    BookingManager.addBooking(widget.artist.name, _dateController.text, _timeController.text);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Booking confirmed!')));
                    Navigator.pop(context); // Go back to the previous screen.
                  }
                },
                child: Text('Confirm Booking'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
