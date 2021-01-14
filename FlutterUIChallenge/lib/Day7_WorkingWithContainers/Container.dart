import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Containers',
      home: Containers(),
    ),
  );
}

class Containers extends StatefulWidget {
  Containers({Key key}) : super(key: key);

  @override
  _ContainersState createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Working With Containers"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Item(
                  image: 'images/pool.jpg',
                  name: 'Solomon Aidoo Junior',
                  followers: '2 Billion Followers',
                ),
                Item(
                  image: 'images/pool.jpg',
                  name: 'Solomon Aidoo Junior',
                  followers: '2 Billion Followers',
                ),
                Item(
                  image: 'images/pool.jpg',
                  name: 'Solomon Aidoo Junior',
                  followers: '2 Billion Followers',
                ),
                Item(
                  image: 'images/pool.jpg',
                  name: 'Solomon Aidoo Junior',
                  followers: '2 Billion Followers',
                ),
                Item(
                  image: 'images/pool.jpg',
                  name: 'Solomon Aidoo Junior',
                  followers: '2 Billion Followers',
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 430,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Item(
                  image: 'images/pool.jpg',
                  name: 'Solomon Aidoo Junior',
                  followers: '2 Billion Followers',
                ),
                Item(
                  image: 'images/pool.jpg',
                  name: 'Solomon Aidoo Junior',
                  followers: '2 Billion Followers',
                ),
                Item(
                  image: 'images/pool.jpg',
                  name: 'Solomon Aidoo Junior',
                  followers: '2 Billion Followers',
                ),
                Item(
                  image: 'images/pool.jpg',
                  name: 'Solomon Aidoo Junior',
                  followers: '2 Billion Followers',
                ),
                Item(
                  image: 'images/pool.jpg',
                  name: 'Solomon Aidoo Junior',
                  followers: '2 Billion Followers',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String image;
  final String name;
  final String followers;
  const Item({
    Key key,
    this.image,
    this.name,
    this.followers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 170,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueAccent,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(image),
                maxRadius: 30,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                followers,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
