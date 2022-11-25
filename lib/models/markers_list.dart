import 'package:google_maps_flutter/google_maps_flutter.dart';

List<Marker> returnMarkers(MarkerIcon) {
  List<Marker> test = [
    Marker(
      draggable: true,
      markerId: const MarkerId("2"),
      position: LatLng(51.127398911595435, 16.978873217509076),
      icon: MarkerIcon,
      infoWindow: const InfoWindow(
        title: 'Krasnal Nokiusz',
      ),
    ),
    Marker(
      draggable: true,
      markerId: const MarkerId("3"),
      position: LatLng(51.12690240832611, 16.991319987951613),
      icon: MarkerIcon,
      infoWindow: const InfoWindow(
        title: 'Krasnal Popowicjusz',
      ),
    ),
  ];
  return test;
}
