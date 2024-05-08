class LocationMarker {
  final String namaLokasi;
  final String deskripsiLokasi;
  final String imgPath;
  final String lat;
  final String long;
  final bool isReccomended = false;

  LocationMarker({
    required this.namaLokasi,
    required this.deskripsiLokasi,
    required this.imgPath,
    required this.lat,
    required this.long,
  });
}
