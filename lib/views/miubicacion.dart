import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MiUbicacion extends StatefulWidget {
  // const MiUbicacion({Key? key}) : super(key: key);

  final LatLng fromPoint = const LatLng(-4.010747, -79.216339);
  final LatLng toPoint = const LatLng(-4.010306, -79.215628);

  @override
  _MiUbicacionState createState() => _MiUbicacionState();
}

class _MiUbicacionState extends State<MiUbicacion> {
  // GoogleMapController _mapController = GoogleMapController.init(id, initialCameraPosition, googleMapState);
  Set<Marker> _createMarkers() {
    var tmp = Set<Marker>();
    tmp.add(
        Marker(markerId: MarkerId("fromPoint"), position: widget.fromPoint));
    return tmp;
  }

  void _onMapCrated(GoogleMapController controller) {
    var _mapController = controller;
    _centerView(_mapController);
  }

  _centerView(GoogleMapController _mapController) async {
    await _mapController.getVisibleRegion();
    var left = min(widget.fromPoint.latitude, widget.toPoint.latitude);
    var rigth = max(widget.fromPoint.latitude, widget.toPoint.latitude);
    var top = max(widget.fromPoint.longitude, widget.toPoint.longitude);
    var buttom = min(widget.fromPoint.longitude, widget.toPoint.longitude);
    var bounds = LatLngBounds(
        southwest: LatLng(left, buttom), northeast: LatLng(rigth, top));
    var cameraUpdate = CameraUpdate.newLatLngBounds(bounds, 50);
    _mapController.animateCamera(cameraUpdate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Ubicacion"),
      ),
      body: GoogleMap(
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        initialCameraPosition: CameraPosition(
          target: widget.fromPoint,
          zoom: 17,
        ),
        markers: _createMarkers(),
        onMapCreated: _onMapCreated(controller),
      ),
    );
  }
}
