import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  final double? latitude;
  final double? longitude;
  const LocationPage({
    super.key,
    this.latitude,
    this.longitude,
  });

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  late GoogleMapController mapController;
  LatLng? selectedLocation;
  String? address;

  void _onTap(LatLng position) async {
    setState(() {
      selectedLocation = position;
    });
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    if (placemarks.isNotEmpty) {
      setState(() {
        address =
            '${placemarks.first.street}, ${placemarks.first.locality}, ${placemarks.first.country}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    LatLng center = LatLng(widget.latitude ?? 0, widget.longitude ?? 0);
    Marker marker = Marker(
      markerId: const MarkerId("marker_1"),
      position: LatLng(widget.latitude ?? 0, widget.longitude ?? 0),
    );
    return Scaffold(
        body: Stack(
          children: [
            SizedBox(
              child: widget.latitude == null
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blueAccent,
                      ),
                    )
                  : GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: center,
                        zoom: 18.0,
                      ),
                      onTap: _onTap,
                      markers: selectedLocation != null
                          ? {
                              Marker(
                                markerId: const MarkerId("selected_location"),
                                position: selectedLocation!,
                              ),
                            }
                          : {},
                    ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 50.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context,
                          {'location': selectedLocation, 'address': address});
                    },
                    child: const Icon(Icons.check),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomSheet: selectedLocation != null
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(address ?? 'Getting address...'),
              )
            : null);
  }
}
