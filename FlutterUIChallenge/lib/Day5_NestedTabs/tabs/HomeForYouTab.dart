import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeForYouTab extends StatefulWidget {
  HomeForYouTab({Key key}) : super(key: key);

  @override
  _HomeForYouTabState createState() => _HomeForYouTabState();
}

class _HomeForYouTabState extends State<HomeForYouTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          ImageContainer(),
          SizedBox(
            height: 20,
          ),
          InstalledApps(),
          SizedBox(
            height: 30,
          ),
          RecommendedApps(),
        ],
      ),
    );
  }
}

Widget ImageContainer() {
  return Container(
    height: 200,
    child: Image(
      image: AssetImage('images/glacier.jpg'),
      fit: BoxFit.cover,
    ),
  );
}

Widget InstalledApps() {
  return Material(
    color: Colors.white,
    elevation: 14,
    shadowColor: Color(0x802196f3),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Previously Installed Apps',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                'More',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        Container(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/rocks1.jpg',
                appName: 'Rocks',
                appRating: '4.6',
              ),
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/snow.jpg',
                appName: 'Snow',
                appRating: '4.6',
              ),
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/river1.jpg',
                appName: 'River',
                appRating: '4.6',
              ),
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/landscape.jpg',
                appName: 'Landscape',
                appRating: '4.6',
              ),
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/mountain.jpg',
                appName: 'Mountain',
                appRating: '4.6',
              ),
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/pool.jpg',
                appName: 'Pool',
                appRating: '4.6',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget RecommendedApps() {
  return Material(
    color: Colors.white,
    elevation: 14,
    shadowColor: Color(0x802196f3),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Recommended Apps',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                'More',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        Container(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/rocks1.jpg',
                appName: 'Rocks',
                appRating: '4.6',
              ),
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/snow.jpg',
                appName: 'Snow',
                appRating: '4.6',
              ),
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/river1.jpg',
                appName: 'River',
                appRating: '4.6',
              ),
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/landscape.jpg',
                appName: 'Landscape',
                appRating: '4.6',
              ),
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/mountain.jpg',
                appName: 'Mountain',
                appRating: '4.6',
              ),
              SizedBox(
                width: 10,
              ),
              Apps(
                appIcon: 'images/pool.jpg',
                appName: 'Pool',
                appRating: '4.6',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class Apps extends StatelessWidget {
  final String appName;
  final String appIcon;
  final String appRating;
  const Apps({
    Key key,
    this.appName,
    this.appIcon,
    this.appRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(appIcon),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          appName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(appRating),
            Icon(
              FontAwesomeIcons.solidStar,
              size: 10,
            ),
          ],
        ),
      ],
    );
  }
}
