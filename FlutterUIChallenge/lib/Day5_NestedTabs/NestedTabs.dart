import 'package:FlutterUIChallenge/screens.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'NestedTabs Demo',
      debugShowCheckedModeBanner: false,
      home: NestedTabs(),
    ),
  );
}

class NestedTabs extends StatefulWidget {
  NestedTabs({Key key}) : super(key: key);

  @override
  _NestedTabsState createState() => _NestedTabsState();
}

class _NestedTabsState extends State<NestedTabs> {
  Color PrimaryColor = Color(0xff109618);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PrimaryColor,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GooglePlayAppBar(),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            onTap: (index) {
              setState(() {
                switch (index) {
                  case 0:
                    PrimaryColor = Color(0xff109618);
                    break;
                  case 1:
                    PrimaryColor = Color(0xff3f51b5);
                    break;
                  case 2:
                    PrimaryColor = Color(0xffe91e63);
                    break;
                  case 3:
                    PrimaryColor = Color(0xff9c27b0);
                    break;
                  case 4:
                    PrimaryColor = Color(0xff2196f3);
                    break;
                  default:
                }
              });
            },
            tabs: <Widget>[
              Tab(
                child: Text(
                  'HOME',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'GAMES',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'MOVIES',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'BOOKS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'MUSIC',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeTopTabs(0xffff5722),
            GamesTopTabs(),
            MoviesToptabs(),
            BooksTopTabs(),
            MusicTopTabs()
          ],
        ),
      ),
    );
  }
}

Widget GooglePlayAppBar() {
  return Container(
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: IconButton(
            icon: Icon(
              FontAwesomeIcons.bars,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ),
        Container(
          child: Text(
            'Google Play',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        Container(
          child: IconButton(
            icon: Icon(
              FontAwesomeIcons.microphone,
              color: Colors.blueGrey,
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
