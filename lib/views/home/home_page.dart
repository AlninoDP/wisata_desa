import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wisata_desa/components/app_appbar.dart';
import 'package:wisata_desa/components/app_background.dart';
import 'package:wisata_desa/components/app_drawer.dart';

final List<String> imageList = [
  'assets/icons/list_icon.png',
  'assets/icons/map_icon.png',
  'assets/icons/placeholder_icon.png',
];

class HomePage extends StatelessWidget {
  HomePage({super.key});

  /// TODO: put into viewmodel
  final List<Widget> imageSliders = imageList
      .map(
        (item) => Container(
          margin: const EdgeInsets.all(5.0),
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppAppBar(),
        endDrawer: const AppDrawer(),
        body: AppBackground(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider(
                  items: imageSliders,
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2,
                    enlargeCenterPage: true,
                    viewportFraction: 0.8,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    autoPlayAnimationDuration: const Duration(seconds: 4),
                    autoPlayCurve: Curves.fastOutSlowIn,
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
