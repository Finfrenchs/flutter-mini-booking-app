import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class FilterOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const FilterOption({
    super.key,
    required this.icon,
    required this.label,
    this.selected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 25,
        width: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: selected ? AppColors.primary : AppColors.white,
          border: Border.all(
            color:
                selected ? AppColors.primary : AppColors.grey.withOpacity(0.5),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: selected ? AppColors.white : AppColors.primary,
              size: 14,
            ),
            const SpaceWidth(5),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: selected ? AppColors.white : AppColors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
