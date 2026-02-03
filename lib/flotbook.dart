import 'package:flutter/material.dart';
import 'package:book_my_seat/book_my_seat.dart';

class FlotBooking extends StatefulWidget {
  const FlotBooking({super.key});

  @override
  State<FlotBooking> createState() => _FlotBookingState();
}

class _FlotBookingState extends State<FlotBooking> {
  late SeatLayoutStateModel seatLayoutStateModel;

  @override
  void initState() {
    super.initState();

    seatLayoutStateModel = SeatLayoutStateModel(
      rows: 5,
      cols: 6,
      seatSvgSize: 35,
      pathUnSelectedSeat: 'assets/unselected.svg',
      pathSelectedSeat: 'assets/selected.svg',
      pathSoldSeat: 'assets/sold.svg',
      pathDisabledSeat: 'assets/disabled.svg',
      currentSeatsState: List.generate(
        5,
            (row) => List.generate(
          6,
              (col) {
            // kuch seats already sold
            if ((row == 1 && col == 2) || (row == 2 && col == 4)) {
              return SeatState.sold;
            }
            return SeatState.unselected;
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flight Seat Booking"),
      ),
      body: Center(
        child: SeatLayoutWidget(
          stateModel: seatLayoutStateModel,
          onSeatStateChanged: (row, col, seatState) {
            debugPrint(
              "Seat tapped → Row: $row Col: $col State: $seatState",
            );
          },
        ),
      ),
    );
  }
}
