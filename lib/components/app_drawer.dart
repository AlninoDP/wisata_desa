import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wisata_desa/components/drawer_menu.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffE2EEC6),
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
          DrawerMenu(
            menuText: 'Home',
            onTap: () => context.go('/'),
          ),
          DrawerMenu(
            menuText: 'List Wisata',
            onTap: () => context.go('/wisata'),
          ),
          DrawerMenu(
            menuText: 'Lihat Peta',
            onTap: () => context.go('/peta'),
          )
        ],
      ),
    );
  }
}
