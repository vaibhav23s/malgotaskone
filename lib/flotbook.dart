import 'package:flutter/material.dart';
class FlotBooking extends StatefulWidget {
  const FlotBooking({super.key});

  @override
  State<FlotBooking> createState() => _FlotBookingState();
}

class _FlotBookingState extends State<FlotBooking> {

  List<Seat> selectedSeats = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flight Seat Booking"),
      ),
      body: Center(
        child: SmartSeatSelector(
          rows: 5,
          columns: 6,
          selectedSeats: selectedSeats, // ✅ FIX
          unavailableSeats: const [
            SeatPosition(row: 1, column: 2),
            SeatPosition(row: 2, column: 4),
          ],
          onSeatSelected: (seat) {
            setState(() {
              if (selectedSeats.contains(seat)) {
                selectedSeats.remove(seat);
              } else {
                selectedSeats.add(seat);
              }
            });

            debugPrint(
              "Selected seat: Row ${seat.row}, Column ${seat.column}",
            );
          },
        ),
      ),
    );
  }
}
