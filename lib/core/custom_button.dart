import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon; // Icon is optional
  final Function() onPressed;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? iconColor;
  final bool isGradient; // Option for gradient or solid color
  const CustomButton({
    required this.text,
    this.icon,
    required this.onPressed,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.orange,
    this.iconColor = Colors.white,
    this.isGradient = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        decoration: BoxDecoration(
          // Conditional decoration: use gradient if isGradient is true, else solid color
          gradient: isGradient
              ? LinearGradient(
                  colors: [Colors.orange, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
          color: isGradient
              ? null
              : backgroundColor, // Apply solid color when no gradient
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: backgroundColor!.withOpacity(0.4),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                color: iconColor,
              ),
              SizedBox(width: 8), // Add some space between icon and text
            ],
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
