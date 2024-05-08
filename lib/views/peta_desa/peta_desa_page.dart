import 'package:flutter/material.dart';
import 'package:wisata_desa/components/app_appbar.dart';
import 'package:wisata_desa/components/app_background.dart';
import 'package:wisata_desa/components/app_drawer.dart';

class PetaDesa extends StatelessWidget {
  const PetaDesa({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const AppAppBar(),
      endDrawer: const AppDrawer(),
      body: AppBackground(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.75,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/placeholder_peta.png',
              ),
            ),
          ),
        ),
      )),
    ));
  }
}
