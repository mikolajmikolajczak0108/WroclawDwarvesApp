import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MapScreen> createState() => _MapScreen();
}

class _MapScreen extends State<MapScreen> {
  late LatLng currentLatLng = const LatLng(48.8566, 2.3522);
  final Completer<GoogleMapController> _controller = Completer();

  Future<void> _determinePosition() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      currentLatLng = LatLng(position.latitude, position.longitude);
    });

    return;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _determinePosition();
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          zoomControlsEnabled: false,
          mapType: MapType.normal,
          initialCameraPosition:
              CameraPosition(target: currentLatLng, zoom: 14),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: <Marker>{
            Marker(
              draggable: true,
              markerId: const MarkerId("1"),
              position: currentLatLng,
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'My Location',
              ),
            )
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: _goToCurrentLocation,
          label: const Text('Moja lokalizacja'),
          icon: const Icon(Icons.home),
        ),
      ),
    );
  }

  Future<void> _goToCurrentLocation() async {
    await _determinePosition();
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: currentLatLng, zoom: 13)));
  }
}
