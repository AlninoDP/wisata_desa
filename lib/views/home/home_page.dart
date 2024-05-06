import 'package:flutter/material.dart';
import 'package:wisata_desa/components/app_appbar.dart';
import 'package:wisata_desa/components/app_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppAppBar(),
        // TODO: finish end drawer
        endDrawer: Drawer(
          backgroundColor: Color(0xffE2EEC6),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.close,
                      size: 55,
                    )),
              ),
              ListTile(
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text('Test 2'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Test 3'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: const AppBackground(child: SizedBox()),
      ),
    );
  }
}
