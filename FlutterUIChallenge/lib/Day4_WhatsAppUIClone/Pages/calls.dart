import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          icon: Icon(
            Icons.add_call,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        onPressed: () {},
      ),
    );
  }
}
