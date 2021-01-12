import 'package:FlutterUIChallenge/Day2_CarouselSlider/carouselUI.dart';
import 'package:flutter/material.dart';

class Recents extends StatefulWidget {
  Recents({Key key}) : super(key: key);

  @override
  _RecentsState createState() => _RecentsState();
}

class _RecentsState extends State<Recents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('My Story'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Story(
                    username: 'Solomon',
                    image: 'images/rock2.jpg',
                  ),
                  Story(
                    username: 'Solomon',
                    image: 'images/rock2.jpg',
                  ),
                  Story(
                    username: 'Solomon',
                    image: 'images/rock2.jpg',
                  ),
                  Story(
                    username: 'Solomon',
                    image: 'images/rock2.jpg',
                  ),
                  Story(
                    username: 'Solomon',
                    image: 'images/rock2.jpg',
                  ),
                  Story(
                    username: 'Solomon',
                    image: 'images/rock2.jpg',
                  ),
                  Story(
                    username: 'Solomon',
                    image: 'images/rock2.jpg',
                  ),
                  Story(
                    username: 'Solomon',
                    image: 'images/rock2.jpg',
                  ),
                  Story(
                    username: 'Solomon',
                    image: 'images/rock2.jpg',
                  ),
                  Story(
                    username: 'Solomon',
                    image: 'images/rock2.jpg',
                  ),
                  Story(
                    username: 'Solomon',
                    image: 'images/rock2.jpg',
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

class Story extends StatelessWidget {
  final String image;
  final String username;
  const Story({
    Key key,
    this.image,
    this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(
            height: 5,
          ),
          Text(username),
        ],
      ),
    );
  }
}
