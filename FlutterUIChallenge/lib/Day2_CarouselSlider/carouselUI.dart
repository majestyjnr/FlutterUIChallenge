import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Carousel Slider',
      debugShowCheckedModeBanner: false,
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
  int _current = 0;
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
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          child: CarouselSlider.builder(
            initialPage: _current,
            viewportFraction: 0.79,
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
            itemCount: carouselData.length,
            itemBuilder: (context, index) {
              return Transform.scale(
                scale: index == _current ? 1 : 0.8,
                child: Container(
                  height: 600,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(carouselData[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      carouselData[index].description,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
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
  CarouselData(
      image: 'images/houseonwater1.jpg', description: 'House On Water'),
  CarouselData(image: 'images/mountain.jpg', description: 'Mountain'),
  CarouselData(image: 'images/landscape.jpg', description: 'Landscape'),
  CarouselData(image: 'images/pool.jpg', description: 'Pool'),
  CarouselData(image: 'images/rock4.jpg', description: 'Rocks'),
  CarouselData(image: 'images/dracula.jpg', description: 'Dracula Parrot'),
  CarouselData(image: 'images/road.jpg', description: 'Road'),
  CarouselData(image: 'images/river1.jpg', description: 'River'),
  CarouselData(image: 'images/river2.jpg', description: 'River'),
];
