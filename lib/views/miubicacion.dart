import 'package:flutter/material.dart';
// import 'package:location/location.dart';
import '../location.dart';

class MiUbicacion extends StatefulWidget {
  const MiUbicacion({Key? key}) : super(key: key);

  @override
  _MiUbicacionState createState() => _MiUbicacionState();
}

class _MiUbicacionState extends State<MiUbicacion> {
 Location location = Location();

// Location location = new Location();
  // bool servicioUbicacion = location.serviceEnabled();
  Text _widgetcito() {
    // LocationData loc = new Lo;
    // print(loc.latitude);
    // print(loc.longitude);
    // print(loc.altitude);
    return const Text("Desliza la pantalla o oprime el boton de menú");
  }
// bool _serviceEnabled=false;
// PermissionStatus _permissionGranted = null;
// LocationData _locationData = new LocationData.fromMap(dataMap);

// _serviceEnabled = await location.serviceEnabled();
// if (!_serviceEnabled) {
//   _serviceEnabled = await location.requestService();
//   if (!_serviceEnabled) {
//     return;
//   }
// }

// _permissionGranted = await location.hasPermission();
// if (_permissionGranted == PermissionStatus.denied) {
//   _permissionGranted = await location.requestPermission();
//   if (_permissionGranted != PermissionStatus.granted) {
//     return;
//   }
// }

// _locationData = await location.getLocation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        semanticLabel: "Hola Mijines",
      ),
      appBar: AppBar(
        title:const Text("Mi Ubicación"),
      ),
      body:  Column(
        children: <Widget>[Text(location.getLocation().toString()), const Text("")],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.info),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) =>
                  AlertDialog(content: _widgetcito()));
        },
      ),
    );
  }
}
