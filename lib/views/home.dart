import 'package:flutter/material.dart';
import 'package:techyapp/models/destination.dart';

import 'browsing.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  String name;
  Home({
    Key key,
    @required this.name,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<List<Destination>> _dests = [
    [
      Destination(
        "Cancun",
        500,
        "https://www.everysteph.com/wp-content/uploads/2019/08/things-to-do-in-cancun-featured-2-1-1920x1000.jpg",
        [
          "Great Time",
          "Lots of Fun",
        ],
        4.5,
      ),
      Destination(
        "Cabo",
        700,
        "https://www.garzablancaresort.com.mx/blog/wp-content/uploads/2019/03/cabo_san_lucas.jpg",
        [
          "Beautiful",
          "The people are so nice",
          "Great Food",
        ],
        4.7,
      ),
      Destination(
        "Bahamas",
        400,
        "https://cdn.travelpulse.com/images/abaaedf4-a957-df11-b491-006073e71405/25b80fab-d2f1-4ff0-b531-9f266118cd28/630x355.jpg",
        [
          "Beautiful sunsets",
          "Very clean beaches",
          "Great Food and music",
        ],
        4.7,
      ),
      Destination(
        "Jamaica",
        550,
        "https://www.planetware.com/wpimages/2019/10/jamaica-best-time-to-visit-best-time-year-to-visit.jpg",
        [
          "Beautiful sunsets",
          "Very clean beaches",
          "Great Food and music",
          "Nice people",
          "Great Variety of resorts"
        ],
        4.7,
      ),
    ],
    [
      Destination(
        "Grand Canyon",
        600,
        "https://bloximages.newyork1.vip.townnews.com/outtherecolorado.com/content/tncms/assets/v3/editorial/5/26/52604e90-414f-11eb-8b0c-7fe13af86d09/5fdcdaca821af.image.jpg?crop=1257%2C707%2C0%2C63&resize=1257%2C707&order=crop%2Cresize",
        [
          "Beautiful sunsets",
          "Very clean beaches",
          "Great food and music",
          "Nice people",
          "Great variety of resorts"
        ],
        4.3,
      ),
      Destination(
        "Miami",
        700,
        "https://pix10.agoda.net/geo/city/18720/1_18720_02.jpg?s=1920x822",
        [
          "Beautiful sunsets",
          "Very clean beaches",
          "Great food and music",
          "Nice people",
          "Great variety of resorts"
        ],
        2.7,
      ),
    ],
  ];
  Destination _dest;
  int _pageindex = 0;

  void changeName(String newName) {
    setState(() {
      this.widget.name = newName;
    });
  }

  void changeDestination(Destination destination) {
    setState(() {
      this._dest = destination;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageindex,
        onTap: (dex) => {
          setState(() {
            _pageindex = dex;
          })
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          )
        ],
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _pageindex,
          children: [
            Browsing(
              user: this.widget.name,
              destinations: this._dests,
              callback: this.changeDestination,
            ),
            Profile(
              destination: _dest,
              name: this.widget.name,
              callback: this.changeName,
            ),
          ],
        ),
      ),
    );
  }
}
