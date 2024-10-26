import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_detail/core/constants/colors.dart';

class VariantSelectChip extends StatelessWidget {
  const VariantSelectChip(
      {super.key,
      required this.text,
      this.isSelected = false,
      required this.onTap});
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: AppColor.chipGrey,
          border: Border.all(
            color: isSelected ? AppColor.black : Colors.transparent,
            width: 2.w,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: AppColor.black),
          ),
        ),
      ),
    );
  }
}
