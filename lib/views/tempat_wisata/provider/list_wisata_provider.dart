import 'package:flutter/material.dart';
import 'package:wisata_desa/data/repositories/location_marker_repo_mock.dart';
import 'package:wisata_desa/models/location_marker.dart';

class ListWisataProvider extends ChangeNotifier {
  final LocationMarkerRepoMock _locationMarkerRepoMock =
      LocationMarkerRepoMock();

  List<LocationMarker> locationMarkers = [];

  ListWisataProvider() {
    getLocationMarkers();
  }

  Future<void> getLocationMarkers() async {
    locationMarkers = await _locationMarkerRepoMock.getLocationMarkers();
    notifyListeners();
  }
}
