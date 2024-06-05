import 'dart:convert';

import 'package:flutter_mini_booking_app/core/assets/assets.gen.dart';

class HotelResponseModel {
  final String name;
  final double lat;
  final double lng;
  final double rate;
  final String price;
  final double distance;
  final String image;

  HotelResponseModel({
    required this.name,
    required this.lat,
    required this.lng,
    required this.rate,
    required this.price,
    required this.distance,
    required this.image,
  });

  factory HotelResponseModel.fromJson(String str) =>
      HotelResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HotelResponseModel.fromMap(Map<String, dynamic> json) =>
      HotelResponseModel(
        name: json["name"],
        lat: json["lat"]?.toDouble(),
        lng: json["lng"]?.toDouble(),
        rate: json["rate"]?.toDouble(),
        price: json["price"],
        distance: json["distance"]?.toDouble(),
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "lat": lat,
        "lng": lng,
        "rate": rate,
        "price": price,
        "distance": distance,
        "image": image,
      };
}

List<HotelResponseModel> hotels = [
  HotelResponseModel(
    name: 'Fave Hotel',
    lat: 1.0,
    lng: 2.0,
    rate: 4.0,
    price: '150000',
    distance: 10.0,
    image: Assets.images.fave.path,
  ),
  HotelResponseModel(
    name: 'Aston Hotel',
    lat: 1.0,
    lng: 2.0,
    rate: 4.8,
    price: '300000',
    distance: 12.0,
    image: Assets.images.aston.path,
  ),
  HotelResponseModel(
    name: 'Redoorz',
    lat: 1.0,
    lng: 2.0,
    rate: 3.3,
    price: '100000',
    distance: 3.0,
    image: Assets.images.redoorz.path,
  ),
  HotelResponseModel(
    name: 'Luminor Hotel',
    lat: 1.0,
    lng: 2.0,
    rate: 5.0,
    price: '1000000',
    distance: 2.0,
    image: Assets.images.luminor.path,
  ),
];
