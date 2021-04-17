import 'package:flutter/material.dart';
import 'package:techyapp/models/destination.dart';

class Booking extends StatefulWidget {
  final Destination destination;
  final Function callback;
  Booking({Key key, @required this.destination, @required this.callback})
      : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //TODO: Fill in UI for booking page
          ],
        ),
      ),
    );
  }
}
