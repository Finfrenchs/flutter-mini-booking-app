import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mini_booking_app/core/constants/colors.dart';

import 'spaces.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function(String value)? onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;
  final bool showLabel;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final bool isOutlineBorder;
  final double borderRadius;
  final FocusNode? focusNode;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.borderRadius = 16,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
    this.showLabel = true,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly = false,
    this.isOutlineBorder = true,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showLabel) ...[
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SpaceHeight(12.0),
        ],
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          obscureText: obscureText,
          keyboardType: keyboardType,
          readOnly: readOnly,
          focusNode: focusNode,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: isOutlineBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: const BorderSide(color: Colors.grey),
                  )
                : null,
            enabledBorder: isOutlineBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: const BorderSide(color: Colors.grey),
                  )
                : null,
            focusedBorder: isOutlineBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: const BorderSide(color: AppColors.primary),
                  )
                : null,
            hintText: label,
          ),
        ),
      ],
    );
  }
}
