import 'package:flutter/material.dart';
import 'package:wisata_desa/components/app_appbar.dart';
import 'package:wisata_desa/components/app_background.dart';
import 'package:wisata_desa/components/app_drawer.dart';

// TODO: design better app info page
class AppInfo extends StatelessWidget {
  const AppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      appBar: AppAppBar(),
      endDrawer: AppDrawer(),
      body: AppBackground(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/alnino.png'),
                  radius: 30,
                ),
                SizedBox(width: 10),
                Text(
                  'Alnino Dio Putera - 20210801452',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/yoggy.png'),
                  radius: 30,
                ),
                SizedBox(width: 10),
                Text(
                  'Yoggy Montana Hendry - 20210801502',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )
          ],
        ),
      )),
    ));
  }
}
