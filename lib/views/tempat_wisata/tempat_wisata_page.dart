import 'package:flutter/material.dart';
import 'package:wisata_desa/components/app_appbar.dart';
import 'package:wisata_desa/components/app_background.dart';
import 'package:wisata_desa/components/app_drawer.dart';

class TempatWisata extends StatelessWidget {
  const TempatWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppAppBar(),
      endDrawer: AppDrawer(),
      body: AppBackground(child: SingleChildScrollView()),
    ));
  }
}
