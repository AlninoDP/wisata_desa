import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_desa/components/app_appbar.dart';
import 'package:wisata_desa/components/app_background.dart';
import 'package:wisata_desa/components/app_drawer.dart';
import 'package:wisata_desa/views/tempat_wisata/provider/list_wisata_provider.dart';

class TempatWisataProvider extends StatelessWidget {
  const TempatWisataProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ListWisataProvider(),
        child: const TempatWisataPage());
  }
}

class TempatWisataPage extends StatelessWidget {
  const TempatWisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const AppAppBar(),
      endDrawer: const AppDrawer(),
      body: AppBackground(
        child: Consumer<ListWisataProvider>(
          builder: (context, provider, _) {
            return ListView.builder(
              itemCount: provider.locationMarkers.length,
              itemBuilder: (context, index) {
                final item = provider.locationMarkers[index];
                return ListTile(
                  title: Text(item.namaLokasi),
                );
              },
            );
          },
        ),
      ),
    ));
  }
}
