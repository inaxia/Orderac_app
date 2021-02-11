import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:collection';

//* My Coordinates -> 25.359314390004535, 82.95089792883576

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
        markers: _markers,
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
