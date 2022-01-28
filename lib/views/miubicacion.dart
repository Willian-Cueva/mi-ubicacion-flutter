import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ubicacion/views/milocalizacion.dart';

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
    tmp.add(Marker(
        markerId: const MarkerId("fromPoint"), position: widget.fromPoint));
    return tmp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Ubicacion"),
        leading: IconButton(
          icon: Icon(Icons.my_location),
          onPressed: () {
            setState(() {
              Navigator.push(
                  context, new MaterialPageRoute(builder: (context) => MiLocalizacion()));
            });
          },
        ),
      ),
      body: GoogleMap(
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        initialCameraPosition: CameraPosition(
          target: widget.fromPoint,
          zoom: 17,
        ),
        markers: _createMarkers(),
      ),
    );
  }
}
