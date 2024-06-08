import 'package:dartz/dartz.dart';
import 'package:flutter_mini_booking_app/data/models/response/hotel_response_model.dart';
import 'package:http/http.dart' as http;

import '../../core/core.dart';
import '../models/response/generate_response_model.dart';

class ProductRemoteDataSource {
  Future<Either<String, List<HotelResponseModel>>> searchLocation(
      String location) async {
    final headers = {
      'Accept': 'application/json',
    };
    final path = '/api/search?location=$location';
    final response = await http.get(
      Uri.parse('${Variable.baseUrl}$path'),
      headers: headers,
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      try {
        final hotels = HotelResponseModel.fromJsonList(response.body);
        return Right(hotels);
      } catch (e) {
        return Left('Failed to parse data: $e');
      }
    } else {
      return Left('Failed to fetch data. Status code: ${response.statusCode}');
    }
  }

  Future<Either<String, GenerateResponseModel>> generateTips() async {
    final headers = {
      'Accept': 'application/json',
    };
    const path = '/api/generate';
    final response = await http.get(
      Uri.parse('${Variable.baseUrl}$path'),
      headers: headers,
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      try {
        final tips = GenerateResponseModel.fromJson(response.body);
        return Right(tips);
      } catch (e) {
        return Left('Failed to parse data tips: $e');
      }
    } else {
      return Left(
          'Failed to fetch data tips. Status code: ${response.statusCode}');
    }
  }
}
