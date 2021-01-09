import 'package:FlutterUIChallenge/Day2_CarouselSlider/carouselUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Profile Page',
      debugShowCheckedModeBanner: false,
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
        leading: IconButton(
            icon: Icon(
              CupertinoIcons.back,
              color: Colors.blue,
            ),
            onPressed: () {}),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/rat3.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Solomon Aidoo Junior',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '134*******132',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(242, 242, 242, 1),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '140',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Text(
                        'Deposits',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(242, 242, 242, 1),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '14',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Text(
                        'Withdrawals',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(242, 242, 242, 1),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '14',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Text(
                        'Transfers',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(242, 242, 242, 1),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '14',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Text(
                        'Receivals',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Account Balance: GHS 9,145,272.00',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Deposit Records',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'View all >>',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 380,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: ListView.builder(
                    itemCount: carouselData.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(carouselData[index].image),
                        ),
                        title: Text(carouselData[index].description),
                        trailing: Icon(CupertinoIcons.forward),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
