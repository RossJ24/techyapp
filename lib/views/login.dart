import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final Function callback;
  Login({Key key, @required this.callback}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  String backgroundImage =
      "https://i.insider.com/5bfec49248eb12058423acf7?width=1066&format=jpeg";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                  child: Icon(
                    Icons.airplanemode_active,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
              ),
              Text(
                "Welcome to A Day Away",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Please enter your name to begin",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: TextField(
                    onChanged: (str) => name = str,
                    decoration: InputDecoration(
                      hintText: "  name",
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: TextButton(
                  onPressed: () => this.widget.callback(name),
                  child: Text("Continue"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
