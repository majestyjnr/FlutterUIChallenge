import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Profile Page',
      home: ProfilePage(),
    ),
  );
}

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
        leading: Container(
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white70,
          ),
          child: IconButton(
              icon: Icon(
                CupertinoIcons.back,
                color: Colors.blue,
              ),
              onPressed: () {}),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                child: Image(
                  image: AssetImage('images/rat3.jpg'),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Solomon Aidoo Junior',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    '134*******132',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
