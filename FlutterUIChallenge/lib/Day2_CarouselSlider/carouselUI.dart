import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Carousel Slider',
      home: CarouselUI(),
    ),
  );
}

class CarouselUI extends StatefulWidget {
  CarouselUI({Key key}) : super(key: key);

  @override
  _CarouselUIState createState() => _CarouselUIState();
}

class _CarouselUIState extends State<CarouselUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carousel Slider',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
    );
  }
}

class CarouselData {
  String image;
  String description;

  CarouselData({this.image, this.description});
}

List<CarouselData> carouselData = [
  CarouselData(image: 'images/', description: ''),
  CarouselData(image: 'images/', description: ''),
  CarouselData(image: 'images/', description: ''),
  CarouselData(image: 'images/', description: ''),
  CarouselData(image: 'images/', description: ''),
  CarouselData(image: 'images/', description: ''),
  CarouselData(image: 'images/', description: ''),
  CarouselData(image: 'images/', description: ''),
  CarouselData(image: 'images/', description: ''),
  CarouselData(image: 'images/', description: ''),
];
