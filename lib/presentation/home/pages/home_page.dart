import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mini_booking_app/presentation/home/bloc/product/product_bloc.dart';

import '../../../core/core.dart';
import '../widgets/home_widget/map.dart';
import '../widgets/widgets_home.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with WidgetsBindingObserver, RouteAware {
  late final TextEditingController searchController;
  double? latitude;
  double? longitude;
  String? address;
  String? nameLocation;
  final RouteObserver<ModalRoute<void>> routeObserver =
      RouteObserver<ModalRoute<void>>();

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    getCurrentPosition();
    WidgetsBinding.instance.addObserver(this);
    context.read<ProductBloc>().add(ProductEvent.searchLocation(address ?? ''));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      context
          .read<ProductBloc>()
          .add(ProductEvent.searchLocation(address ?? ''));
    }
  }

  @override
  void didPopNext() {
    context.read<ProductBloc>().add(ProductEvent.searchLocation(address ?? ''));
  }

  Future<void> _selectLocation() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LocationPage(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );

    if (result != null && result is Map<String, dynamic>) {
      setState(() {
        latitude = (result['location'] as LatLng).latitude;
        longitude = (result['location'] as LatLng).longitude;
        address = result['address'] as String?;
        //searchController.text = address ?? '';
      });
    }
  }

  Future<void> getCurrentPosition() async {
    try {
      Location location = Location();

      bool serviceEnabled;
      PermissionStatus permissionGranted;
      LocationData locationData;

      serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          return;
        }
      }

      permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          return;
        }
      }

      locationData = await location.getLocation();
      latitude = locationData.latitude;
      longitude = locationData.longitude;
      getAddressFromCoordinates(latitude!, longitude!);

      setState(() {});
    } on PlatformException catch (e) {
      if (e.code == 'IO_ERROR') {
        debugPrint(
            'A network error occurred trying to lookup the supplied coordinates: ${e.message}');
      } else {
        debugPrint('Failed to lookup coordinates: ${e.message}');
      }
    } catch (e) {
      debugPrint('An unknown error occurred: $e');
    }
  }

  Future<void> getAddressFromCoordinates(double lat, double lng) async {
    const apiKey = 'AIzaSyA5RyALuLCUIN1obXoDAvRjpJT1_OC3c1c';
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$apiKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      if (data['status'] == 'OK') {
        final results = data['results'] as List;
        if (results.isNotEmpty) {
          setState(() {
            address = results.first['formatted_address'];
            //searchController.text = address!;
          });
        }
      } else {
        debugPrint('Error: ${data['status']}');
      }
    } else {
      debugPrint('Gagal memuat data alamat: ${response.reasonPhrase}');
    }
  }

  Future<void> _refreshHome() async {
    context.read<ProductBloc>().add(ProductEvent.searchLocation(address ?? ''));
  }

  @override
  void dispose() {
    searchController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _refreshHome,
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const HomeTitle(),
              const SpaceHeight(15),
              HomeSearch(
                searchController: searchController,
                location: address ?? '',
                onTap: () {
                  _selectLocation();
                },
              ),
              const SpaceHeight(20),
              HomeContent(
                address: address ?? '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
