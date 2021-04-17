import 'package:flutter/material.dart';
import 'package:techyapp/models/destination.dart';
import 'package:techyapp/widgets/destination_card.dart';

class Profile extends StatefulWidget {
  final Destination destination;
  String name;
  final Function callback;
  Profile(
      {Key key,
      @required this.destination,
      @required this.name,
      @required this.callback})
      : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hello ${this.widget.name}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (str) => this.widget.name = str,
              decoration: InputDecoration(
                hintText: "  name",
                fillColor: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () => this.widget.callback(this.widget.name),
            child: Text(
              "Update Name",
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Your Selection",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: this.widget.destination != null
                ? DestinationCard(destination: this.widget.destination,callback: (Destination d){},)
                : Text("You haven't made a selection yet."),
          ),
        ],
      ),
    );
  }
}
