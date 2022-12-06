import 'dart:async';
import 'package:dwarves_app/models/markers_list.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MapScreen> createState() => _MapScreen();
}

class _MapScreen extends State<MapScreen> {
  late LatLng currentLatLng = const LatLng(0, 0);
  final Completer<GoogleMapController> _controller = Completer();
  late List<Marker> dwarf_marker_list = [];
  bool appStarted = true;

  Future<void> _determinePosition() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    // Position position = await Geolocator.getCurrentPosition();
    // Position position = LatLng(51.11067852952598, 17.03580765983415);
    // setState(() {
    //   currentLatLng = LatLng(position.latitude, position.longitude);
    // });

    return;
  }

  Future<void> _get_dwarf_marker_list() async {
    var tmp_dwarf_marker_list = await returnMarkers();
    setState(() {
      dwarf_marker_list = tmp_dwarf_marker_list;
    });
  }

  @override
  void initState() {
    super.initState();
    _goToCurrentLocation();
    _get_dwarf_marker_list();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          zoomControlsEnabled: false,
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(target: currentLatLng, zoom: 14),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: <Marker>{
            // Marker(
            //   draggable: true,
            //   markerId: const MarkerId("1"),
            //   position: currentLatLng,
            //   icon: BitmapDescriptor.defaultMarker,
            //   infoWindow: const InfoWindow(
            //     title: 'My Location',
            //   ),
            // ),
            ...dwarf_marker_list.map((dwarf_marker) => dwarf_marker).toList()
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
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        const CameraPosition(
            target: LatLng(51.11067852952598, 17.03580765983415), zoom: 13),
      ),
    );
  }
}
