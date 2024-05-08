import 'package:flutter/material.dart';
import 'package:wisata_desa/views/home/home_page.dart';
import 'package:wisata_desa/views/tempat_wisata/tempat_wisata_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TempatWisataProvider(),
    );
  }
}
