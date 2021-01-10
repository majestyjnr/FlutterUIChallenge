import 'package:FlutterUIChallenge/Day4_WhatsAppUIClone/model/chats_model.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              print('Open Chat');
            },
            child: Column(
              children: <Widget>[
                Divider(
                  height: 0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(chats[index].senderDp),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(chats[index].senderName),
                      Text(
                        chats[index].time,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        chats[index].previewMessage,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.done_all,
                        color: Colors.grey,
                        size: 14,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          icon: Icon(
            Icons.chat,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        onPressed: () {},
      ),
    );
  }
}
