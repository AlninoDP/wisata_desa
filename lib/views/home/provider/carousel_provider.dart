import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselProvider extends ChangeNotifier {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  void setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  final List<String> imageList = [
    'assets/images/img_wisata_1.png',
    'assets/images/img_wisata_2.png',
    'assets/images/img_wisata_3.png',
    'assets/images/img_wisata_4.jpg'
  ];

  List<Widget> get imageSliders => imageList
      .map(
        (item) => SizedBox(
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  // image
                  Image.asset(item, fit: BoxFit.cover, width: 1000.0),

                  // Text
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        'No. ${imageList.indexOf(item)} image',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      )
      .toList();
}
