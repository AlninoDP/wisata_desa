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
            return ListView.separated(
              padding: const EdgeInsets.all(10),
              separatorBuilder: (context, index) {
                return const SizedBox(height: 8);
              },
              itemCount: provider.locationMarkers.length,
              itemBuilder: (context, index) {
                final item = provider.locationMarkers[index];
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: (item.isReccomended == true)
                            ? const Color(0xffFFDF00)
                            : Colors.transparent,
                      )),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: const Color(0xffE2EEC6),
                    contentPadding: const EdgeInsets.fromLTRB(10, 2, 5, 5),
                    title: Text(item.namaLokasi),
                    subtitle: Text(
                      item.deskripsiLokasi,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    leading: Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(item.imgPath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    trailing: (item.isReccomended == true)
                        ? const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffFFDF00),
                                size: 20,
                              ),
                            ],
                          )
                        : null,
                    onTap: () {},
                  ),
                );
              },
            );
          },
        ),
      ),
    ));
  }
}
