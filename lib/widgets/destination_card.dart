import 'package:flutter/material.dart';
import 'package:techyapp/models/destination.dart';
import 'package:techyapp/views/booking.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;
  final Function callback;
  const DestinationCard({
    Key key,
    @required this.destination,
    @required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Booking(destination: destination, callback: this.callback,),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(25),
        ),
        height: 275,
        width: 300,
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: NetworkImage(this.destination.preview),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                this.destination.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Text(
                "\$${this.destination.price}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
