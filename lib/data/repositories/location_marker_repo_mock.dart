import 'package:flutter/material.dart';
import 'package:wisata_desa/models/location_marker.dart';

const deskripsiPlaceholder =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sodales maximus sapien eget dapibus.
  Aliquam sem quam, lobortis volutpat blandit vitae, sagittis auctor purus.
  Nullam non est ultricies, imperdiet lorem non, consectetur eros.
  Mauris faucibus et purus quis varius. Curabitur non mi mi.
  In in tellus consectetur, ullamcorper lorem dignissim, dignissim mauris.
  Morbi a porttitor felis. Maecenas ultrices lobortis lectus quis rhoncus.
  ''';

class LocationMarkerRepoMock {
  // list of location markers
  final List<LocationMarker> locationMarkers = [
    LocationMarker(
      namaLokasi: 'Pantai Lorem Ipsum',
      deskripsiLokasi: deskripsiPlaceholder,
      imgPath: 'assets/images/img_wisata_1.png',
      lat: '-6.203448851182719',
      long: '107.00422897578356',
    ),
    LocationMarker(
      namaLokasi: 'Villa Pantai Ipsum',
      deskripsiLokasi: deskripsiPlaceholder,
      imgPath: 'assets/images/img_wisata_2.png',
      lat: '-6.203412384399042',
      long: ' 107.00444188838668',
      isReccomended: true,
    ),
    LocationMarker(
      namaLokasi: 'Bukit Lorem Ipsum',
      deskripsiLokasi: deskripsiPlaceholder,
      imgPath: 'assets/images/img_wisata_3.png',
      lat: '-6.206770585140509',
      long: '107.01853949364995',
      isReccomended: true,
    ),
    LocationMarker(
      namaLokasi: 'Masjid lorem Ipsum',
      deskripsiLokasi: deskripsiPlaceholder,
      imgPath: 'assets/images/img_wisata_4.jpg',
      lat: '-6.2060321989897425',
      long: '107.00959934077592',
    )
  ];

  Future<List<LocationMarker>> getLocationMarkers() {
    try {
      return Future.delayed(
          const Duration(milliseconds: 500), () => locationMarkers);
    } catch (e) {
      debugPrint(e.toString());
      return Future.value([]); // return empty list
    }
  }
}
