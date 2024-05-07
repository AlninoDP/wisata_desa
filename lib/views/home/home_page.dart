import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_desa/components/app_appbar.dart';
import 'package:wisata_desa/components/app_background.dart';
import 'package:wisata_desa/components/app_drawer.dart';
import 'package:wisata_desa/views/home/provider/carousel_provider.dart';

class HomePageProvider extends StatelessWidget {
  const HomePageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CarouselProvider(),
      child: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                const SizedBox(height: 15),

                // Carousel
                Consumer<CarouselProvider>(
                  builder: (context, provider, _) {
                    return Column(
                      children: [
                        CarouselSlider(
                          items: provider.imageSliders,
                          carouselController: provider.carouselController,
                          options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: 2,
                            enlargeCenterPage: true,
                            viewportFraction: 0.8,
                            enlargeStrategy: CenterPageEnlargeStrategy.scale,
                            autoPlayAnimationDuration:
                                const Duration(seconds: 4),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            onPageChanged: (index, reason) =>
                                provider.setIndex(index),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              provider.imageList.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => provider.carouselController
                                  .animateToPage(entry.key),
                              child: Container(
                                width: 12.0,
                                height: 12.0,
                                margin: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                  horizontal: 4.0,
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(
                                        provider.currentIndex == entry.key
                                            ? 0.9
                                            : 0.4)),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    );
                  },
                ),

                //About
              ],
            ),
          ),
        )),
      ),
    );
  }
}
