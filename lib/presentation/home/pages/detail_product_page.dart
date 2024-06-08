import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_mini_booking_app/core/core.dart';
import 'package:flutter_mini_booking_app/data/models/response/hotel_response_model.dart';
import 'package:flutter_mini_booking_app/presentation/home/bloc/product/product_bloc.dart';

import '../widgets/widgets_home.dart';

class DetailProductPage extends StatefulWidget {
  final HotelResponseModel data;
  const DetailProductPage({
    super.key,
    required this.data,
  });

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  void initState() {
    context.read<ProductBloc>().add(const ProductEvent.generateTips());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const DetailAppBar(),
            DetailContent(
              data: widget.data,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        margin: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(50),
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
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_pin,
                    color: AppColors.primary,
                    size: 14,
                  ),
                  SpaceWidth(5),
                  Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Button.filled(
                onPressed: () {},
                label: 'Booking',
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
