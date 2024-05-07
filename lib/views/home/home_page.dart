import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_desa/components/app_appbar.dart';
import 'package:wisata_desa/components/app_background.dart';
import 'package:wisata_desa/components/app_drawer.dart';
import 'package:wisata_desa/views/home/provider/carousel_provider.dart';
import 'package:wisata_desa/views/home/widgets/about_menu.dart';
import 'package:wisata_desa/views/home/widgets/menu_button.dart';

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

                const SizedBox(height: 20),

                //About
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xffE2EEC6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      AboutMenu(
                        icon: Icons.star,
                        iconColor: Colors.amber,
                        text: 'Rekomendasi Lokasi Wisata Desa XXX',
                      ),
                      SizedBox(height: 10),
                      AboutMenu(
                        icon: Icons.location_on_sharp,
                        iconColor: Colors.redAccent,
                        text: 'Lokasi Tempat Yang Akurat',
                      ),
                      SizedBox(height: 10),
                      AboutMenu(
                        icon: Icons.info,
                        iconColor: Colors.lightBlue,
                        text: 'Informasi Detail Tentang Lokasi Wisata',
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Button
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: MenuButton(
                        imagePath: 'assets/icons/list_icon.png',
                        textMenu: 'List Wisata',
                      ),
                    ),
                    Expanded(
                      child: MenuButton(
                        imagePath: 'assets/icons/map_icon.png',
                        textMenu: 'Buka Peta',
                      ),
                    ),
                    Expanded(
                      child: MenuButton(
                        imagePath: 'assets/icons/info_icon.png',
                        textMenu: 'App Info',
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
