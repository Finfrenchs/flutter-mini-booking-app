// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_mini_booking_app/presentation/home/bloc/product/product_bloc.dart';

import '../../../../core/core.dart';
import '../../pages/detail_product_page.dart';
import '../widgets_home.dart';

class HomeContent extends StatelessWidget {
  final String address;
  const HomeContent({
    super.key,
    required this.address,
  });

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
        BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const SizedBox.shrink();
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              failed: (message) {
                return Center(
                  child: Text(message),
                );
              },
              successFetchLocation: (dataProduct) {
                return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dataProduct.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.55,
                      crossAxisCount: 2,
                      crossAxisSpacing: 14.0,
                      mainAxisSpacing: 14.0,
                    ),
                    itemBuilder: (context, index) {
                      final data = dataProduct[index];
                      return ProductCard(
                        name: data.name,
                        location: 'Sidoarjo, East Java, Indonesia',
                        rating: data.rate.toString(),
                        distance: data.distance.toString(),
                        price: int.parse(data.price.replaceAll('\$', '')),
                        image: data.image,
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailProductPage(
                              data: data,
                            );
                          }));
                          if (context.mounted) {
                            context
                                .read<ProductBloc>()
                                .add(ProductEvent.searchLocation(address));
                          }
                        },
                      );
                    });
              },
            );
          },
        ),
      ],
    );
  }
}
