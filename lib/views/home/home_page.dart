import 'package:flutter/material.dart';
import 'package:wisata_desa/components/app_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Desa Wisata XXXXX'),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
                height: 1,
              )
            ],
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 80,
        ),
        body: const AppBackground(child: SizedBox()),
      ),
    );
  }
}
