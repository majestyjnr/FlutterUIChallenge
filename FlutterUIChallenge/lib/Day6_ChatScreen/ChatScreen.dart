import 'package:FlutterUIChallenge/Day6_ChatScreen/pages/Contacts.dart';
import 'package:FlutterUIChallenge/Day6_ChatScreen/pages/Groups.dart';
import 'package:FlutterUIChallenge/Day6_ChatScreen/pages/Recents.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Screen',
      home: ChatScreen(),
    ),
  );
}

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Chats',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/houseonwater2.jpg'),
              radius: 20,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.blue,
          indicatorColor: Colors.transparent,
          labelStyle: TextStyle(
            fontSize: 18,
          ),
          tabs: <Widget>[
            Tab(
              child: Text('Recent'),
            ),
            Tab(
              child: Text('Group'),
            ),
            Tab(
              child: Text('Contacts'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Recents(),
          Groups(),
          Contacts(),
        ],
      ),
    );
  }
}
