import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Future<List<Marker>> returnMarkers() async {
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  final dwarfIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(), "assets/images/dwarf_marker.png");

  return [
    Marker(
      draggable: true,
      markerId: const MarkerId("2"),
      position: LatLng(51.127398911595435, 16.978873217509076),
      icon: dwarfIcon,
      infoWindow: const InfoWindow(
        title: 'Krasnal Nokiusz',
      ),
    ),
    Marker(
      draggable: true,
      markerId: const MarkerId("3"),
      position: LatLng(51.12690240832611, 16.991319987951613),
      icon: dwarfIcon,
      infoWindow: const InfoWindow(
        title: 'Krasnal Popowicjusz',
      ),
    ),
  ];
}
