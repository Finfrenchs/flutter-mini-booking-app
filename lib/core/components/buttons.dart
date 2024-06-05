import 'package:flutter/material.dart';
import '../constants/colors.dart';

enum ButtonStyleType { filled, outlined }

class Button extends StatelessWidget {
  const Button.filled({
    super.key,
    required this.onPressed,
    this.label,
    this.style = ButtonStyleType.filled,
    this.color = AppColors.primary,
    this.textColor = Colors.white,
    this.width = double.infinity,
    this.height = 60.0,
    this.borderRadius = 50.0,
    this.icon,
    this.suffixIcon,
    this.disabled = false,
    this.fontSize = 18.0,
  });

  const Button.outlined({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyleType.outlined,
    this.color = Colors.transparent,
    this.textColor = AppColors.primary,
    this.width = double.infinity,
    this.height = 60.0,
    this.borderRadius = 50.0,
    this.icon,
    this.suffixIcon,
    this.disabled = false,
    this.fontSize = 18.0,
  });

  final Function() onPressed;
  final String? label;
  final ButtonStyleType style;
  final Color color;
  final Color textColor;
  final double? width;
  final double height;
  final double borderRadius;
  final Widget? icon;
  final Widget? suffixIcon;
  final bool disabled;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: style == ButtonStyleType.filled
          ? ElevatedButton(
              onPressed: disabled ? null : onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: icon != null && label == null
                  ? _buildIconButtonContent()
                  : _buildButtonContent())
          : OutlinedButton(
              onPressed: disabled ? null : onPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: color,
                side: const BorderSide(color: AppColors.stroke),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: icon != null && label == null
                  ? _buildIconButtonContent()
                  : _buildButtonContent(),
            ),
    );
  }

  Widget _buildButtonContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        if (icon != null) ...[
          icon!,
          if (label != null) const SizedBox(width: 10.0),
        ],
        Expanded(
          child: Text(
            label ?? '',
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
        if (suffixIcon != null && label != null) ...[
          const SizedBox(width: 10.0),
          suffixIcon!,
        ],
      ],
    );
  }

  Widget _buildIconButtonContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        icon!,
      ],
    );
  }
}
