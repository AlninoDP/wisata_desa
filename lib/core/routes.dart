import 'package:go_router/go_router.dart';
import 'package:wisata_desa/views/app_info/app_info.dart';
import 'package:wisata_desa/views/home/home_page.dart';
import 'package:wisata_desa/views/peta_desa/peta_desa_page.dart';
import 'package:wisata_desa/views/tempat_wisata/tempat_wisata_page.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePageProvider(),
    ),
    GoRoute(
      path: '/wisata',
      builder: (context, state) => const TempatWisataProvider(),
    ),
    GoRoute(
      path: '/peta',
      builder: (context, state) => const PetaDesa(),
    ),
    GoRoute(
      path: '/app_info',
      builder: (context, state) => const AppInfo(),
    )
  ],
);
