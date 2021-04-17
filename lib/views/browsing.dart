import 'package:flutter/material.dart';
import 'package:techyapp/models/destination.dart';
import 'package:techyapp/widgets/destination_card.dart';

class Browsing extends StatefulWidget {
  final String user;
  final List<List<Destination>> destinations;
  final Function callback;
  Browsing({Key key, @required this.user, @required this.destinations, @required this.callback})
      : super(key: key);

  @override
  _BrowsingState createState() => _BrowsingState();
}

class _BrowsingState extends State<Browsing> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hello ${this.widget.user}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "International Destinations",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: this.widget.destinations[0].length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: DestinationCard(
                  destination: this.widget.destinations[0][index],
                  callback: this.widget.callback,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Domestic Destinations",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: this.widget.destinations[1].length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: DestinationCard(
                  destination: this.widget.destinations[1][index],
                  callback: this.widget.callback,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
