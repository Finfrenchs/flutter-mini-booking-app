import 'package:flutter/material.dart';
import 'package:flutter_mini_booking_app/core/constants/colors.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back,',
              style: TextStyle(fontSize: 12.0),
            ),
            Text(
              'Mr. Ramdane',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_rounded,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
