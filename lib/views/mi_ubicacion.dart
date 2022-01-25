import 'package:flutter/material.dart';
// import 'package:location/location.dart';
import '../location.dart';

class Mi_Ubicacion extends StatefulWidget {
  const Mi_Ubicacion({Key? key}) : super(key: key);

  @override
  _Mi_UbicacionState createState() => _Mi_UbicacionState();
}

class _Mi_UbicacionState extends State<Mi_Ubicacion> {
  Location location = new Location();

// Location location = new Location();
  // bool servicioUbicacion = location.serviceEnabled();
  Text _widgetcito() {
    // LocationData loc = new Lo;
    // print(loc.latitude);
    // print(loc.longitude);
    // print(loc.altitude);
    return Text("Desliza la pantalla o oprime el boton de menú");
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
      drawer: Drawer(
        semanticLabel: "Hola Mijines",
      ),
      appBar: AppBar(
        title: Text("Mi Ubicación"),
      ),
      body: Container(
          child: Column(
        children: <Widget>[Text(location.getLocation().toString()), Text("")],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.info),
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
