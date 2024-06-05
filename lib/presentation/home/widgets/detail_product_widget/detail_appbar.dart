import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      decoration: const BoxDecoration(color: AppColors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 65,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: AppColors.grey.withOpacity(0.8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    color: AppColors.grey.withOpacity(0.8),
                    size: 12,
                  ),
                  const SpaceWidth(5),
                  Text(
                    'Back',
                    style: TextStyle(
                      color: AppColors.grey.withOpacity(0.8),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.grey.withOpacity(0.8),
              ),
            ),
            child: Icon(
              Icons.bookmark_outline_rounded,
              color: AppColors.grey.withOpacity(0.8),
              size: 14,
            ),
          ),
          const SpaceWidth(10),
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.grey.withOpacity(0.8),
              ),
            ),
            child: Icon(
              Icons.share,
              color: AppColors.grey.withOpacity(0.8),
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}
