import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:collection';

//* My Coordinates -> 25.359314390004535, 82.95089792883576

var nearbyMallCoordinates = [
  [25.358036260600652, 82.95074322964106], //Tirupati Complex
  [25.36825218206572, 82.97458343086413], //Yugandhar Complex
  [25.366424209382128, 82.97444128859611], //B2 Bachat Bazar
  [25.353689343922774, 82.97669817404596], //Genuine creo lifestyle
  [25.338880872193943, 82.97650310477155], //JHV Mall
];

var nearbyMallNames = [
  'Tirupati Complex',
  'Yugandhar Complex',
  'B2 Bachat Bazar',
  'Genuine creo lifestyle',
  'JHV Mall',
];

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  GoogleMapController _googleMapController;
  Set<Marker> _markers = HashSet<Marker>();

  void _onMapCreated(GoogleMapController controller) {
    _googleMapController = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId("0"),
          position: LatLng(25.359314390004535, 82.95089792883576),
          infoWindow: InfoWindow(
            title: "Your current location",
            // snippet: "Rudra Aishwaryan Appartment",
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final body = Container(
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(25.359314390004535, 82.95089792883576),
          zoom: 12,
        ),
        mapType: MapType.normal,
        markers: {
          Marker(
            markerId: MarkerId(nearbyMallNames[0]),
            position: LatLng(
              nearbyMallCoordinates[0][0],
              nearbyMallCoordinates[0][1],
            ),
            infoWindow: InfoWindow(
              title: nearbyMallNames[0],
            ),
          ),
          Marker(
            markerId: MarkerId(nearbyMallNames[1]),
            position: LatLng(
              nearbyMallCoordinates[1][0],
              nearbyMallCoordinates[1][1],
            ),
            infoWindow: InfoWindow(
              title: nearbyMallNames[1],
            ),
          ),
          Marker(
            markerId: MarkerId(nearbyMallNames[2]),
            position: LatLng(
              nearbyMallCoordinates[2][0],
              nearbyMallCoordinates[2][1],
            ),
            infoWindow: InfoWindow(
              title: nearbyMallNames[2],
            ),
          ),
          Marker(
            markerId: MarkerId(nearbyMallNames[3]),
            position: LatLng(
              nearbyMallCoordinates[3][0],
              nearbyMallCoordinates[3][1],
            ),
            infoWindow: InfoWindow(
              title: nearbyMallNames[3],
            ),
          ),
          Marker(
            markerId: MarkerId(nearbyMallNames[4]),
            position: LatLng(
              nearbyMallCoordinates[4][0],
              nearbyMallCoordinates[4][1],
            ),
            infoWindow: InfoWindow(
              title: nearbyMallNames[4],
            ),
          ),
        },
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );

    final floatingActionButton = FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Icon(Icons.arrow_back),
    );

    return Scaffold(
      body: body,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
