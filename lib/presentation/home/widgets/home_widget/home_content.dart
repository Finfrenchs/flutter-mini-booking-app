import 'package:flutter/material.dart';
import '../../../../core/core.dart';
import '../../../../data/models/response/hotel_response_model.dart';
import '../../pages/detail_product_page.dart';
import '../widgets_home.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Recommendation around you',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'View all',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
        const SpaceHeight(13),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: hotels.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.62,
              crossAxisCount: 2,
              crossAxisSpacing: 14.0,
              mainAxisSpacing: 14.0,
            ),
            itemBuilder: (context, index) {
              final data = hotels[index];
              return ProductCard(
                name: data.name,
                location: 'Sidoarjo, East Java, Indonesia',
                rating: data.rate.toString(),
                distance: data.distance.toString(),
                price: int.parse(data.price),
                image: data.image,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailProductPage(
                      data: data,
                    );
                  }));
                },
              );
            }),
      ],
    );
  }
}
