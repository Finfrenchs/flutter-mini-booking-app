// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_mini_booking_app/core/extensions/string_ext.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_mini_booking_app/data/models/response/hotel_response_model.dart';

import '../../../../core/core.dart';
import '../../models/fasility_model.dart';

class DetailContain extends StatelessWidget {
  final HotelResponseModel data;
  const DetailContain({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final List<FacilityModel> facilities = [
      FacilityModel(name: 'Swimming Pool'),
      FacilityModel(name: 'Free Wifi'),
      FacilityModel(name: 'Air Conditioner'),
      FacilityModel(name: 'Lounge Bar & Cafe'),
      FacilityModel(name: 'Double Bed'),
      FacilityModel(name: 'Kitchen'),
      FacilityModel(name: 'Bathroom Set'),
    ];
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                        data.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 9,
                  right: 20,
                  left: 20,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 95,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black.withOpacity(0.3),
                          offset: const Offset(0, 0.5),
                          blurRadius: 10,
                          spreadRadius: 0,
                          blurStyle: BlurStyle.normal,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            const SpaceHeight(4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.location_pin,
                                  color: AppColors.primary,
                                  size: 14,
                                ),
                                const SpaceWidth(5),
                                Text(
                                  'Sidoarjo, Indonesia',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.grey.withOpacity(0.8),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SpaceHeight(4),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: AppColors.primary,
                                  size: 14,
                                ),
                                const SpaceWidth(5),
                                Text(
                                  data.rate.toString(),
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.grey.withOpacity(0.8),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SpaceWidth(10),
                                Image.asset(
                                  Assets.icons.icDistance.path,
                                  color: AppColors.primary,
                                  height: 14,
                                  width: 14,
                                ),
                                const SpaceWidth(5),
                                Text(
                                  '${data.distance} Km',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.grey.withOpacity(0.8),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: data
                                    .price.toIntegerFromText.currencyFormatRp,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primary,
                                ),
                              ),
                              TextSpan(
                                text: '\n/night',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.grey.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SpaceHeight(15),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  const SpaceHeight(10),
                  Text(
                    'Exercitation officia magna mollit magna incididunt cillum dolore. Laborum aute incididunt tempor excepteur. Ex qui tempor exercitation pariatur magna est do veniam eiusmod pariatur sit sint laboris. Quis amet commodo est et incididunt mollit culpa minim ea amet laboris consectetur ea. Consequat reprehenderit laborum veniam tempor id reprehenderit eiusmod. Ea non elit deserunt quis sit laboris. Eu ex ipsum Lorem voluptate laboris dolor.',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.grey.withOpacity(
                        0.8,
                      ),
                    ),
                  ),
                  const SpaceHeight(5),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Read more',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SpaceHeight(15),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Facility',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  const SpaceHeight(10),
                  MasonryGridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    itemCount: facilities.length,
                    itemBuilder: (context, index) {
                      final facility = facilities[index];
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          facility.name ?? '',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                            color: AppColors.grey.withOpacity(0.8),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SpaceHeight(15),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Transportation Options',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  const SpaceHeight(10),
                  Text(
                    'Exercitation officia magna mollit magna incididunt cillum dolore. Laborum aute incididunt tempor excepteur. Ex qui tempor exercitation pariatur magna est do veniam eiusmod pariatur sit sint laboris. Quis amet commodo est et incididunt mollit culpa minim ea amet laboris consectetur ea. Consequat reprehenderit laborum veniam tempor id reprehenderit eiusmod. Ea non elit deserunt quis sit laboris. Eu ex ipsum Lorem voluptate laboris dolor.',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.grey.withOpacity(
                        0.8,
                      ),
                    ),
                  ),
                  const SpaceHeight(5),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Read more',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SpaceHeight(15),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tips',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  const SpaceHeight(10),
                  Text(
                    'Exercitation officia magna mollit magna incididunt cillum dolore. Laborum aute incididunt tempor excepteur. Ex qui tempor exercitation pariatur magna est do veniam eiusmod pariatur sit sint laboris. Quis amet commodo est et incididunt mollit culpa minim ea amet laboris consectetur ea. Consequat reprehenderit laborum veniam tempor id reprehenderit eiusmod. Ea non elit deserunt quis sit laboris. Eu ex ipsum Lorem voluptate laboris dolor.',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.grey.withOpacity(
                        0.8,
                      ),
                    ),
                  ),
                  const SpaceHeight(5),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Read more',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SpaceHeight(80),
          ],
        ),
      ),
    );
  }
}
