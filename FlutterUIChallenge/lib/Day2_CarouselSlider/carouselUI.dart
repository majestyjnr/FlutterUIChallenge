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
  CarouselData(image: 'images/glacier.jpg', description: 'Glacier'),
  CarouselData(image: 'images/houseonwater1.jp', description: 'House On Water'),
  CarouselData(image: 'images/mountain.jpg', description: 'Mountain'),
  CarouselData(image: 'images/landscape.jpg', description: 'Landscape'),
  CarouselData(image: 'images/pool.jpg', description: 'Pool'),
  CarouselData(image: 'images/rock4.jpg', description: 'Rocks'),
  CarouselData(image: 'images/dracula.jpg', description: 'Dracula Parrot'),
  CarouselData(image: 'images/road.jpg', description: 'Road'),
  CarouselData(image: 'images/river1.jpg', description: 'River'),
  CarouselData(image: 'images/river2.jpg', description: 'River'),
];
