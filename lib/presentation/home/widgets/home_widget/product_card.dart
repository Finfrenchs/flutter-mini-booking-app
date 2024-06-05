import 'package:flutter/material.dart';

import 'package:flutter_mini_booking_app/core/core.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String location;
  final String rating;
  final String distance;
  final int price;
  final VoidCallback? onTap;
  final String? image;
  const ProductCard({
    super.key,
    required this.name,
    required this.location,
    required this.rating,
    required this.distance,
    required this.price,
    this.onTap,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(
          10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.5),
              offset: const Offset(0.0, 0.2),
              blurRadius: 10,
              spreadRadius: 0,
              blurStyle: BlurStyle.solid,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(image ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: AppColors.white,
                    child: Center(
                      child: Icon(
                        Icons.bookmark_outline_rounded,
                        color: AppColors.grey.withOpacity(0.5),
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SpaceHeight(10),
            Text(
              name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
            ),
            const SpaceHeight(5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_pin,
                  color: AppColors.primary,
                  size: 12,
                ),
                const SpaceWidth(5),
                Flexible(
                  child: Text(
                    location,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SpaceHeight(5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: AppColors.primary,
                  size: 12,
                ),
                const SpaceWidth(5),
                Flexible(
                  child: Text(
                    rating,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SpaceWidth(10),
                Image.asset(
                  Assets.icons.icDistance.path,
                  color: AppColors.primary,
                  height: 12,
                  width: 12,
                ),
                const SpaceWidth(5),
                Flexible(
                  child: Text(
                    '$distance Km',
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SpaceHeight(10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: price.currencyFormatRp,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                  const TextSpan(
                    text: ' /night',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
