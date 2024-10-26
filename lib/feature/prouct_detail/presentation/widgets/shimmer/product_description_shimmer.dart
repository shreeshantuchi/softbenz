import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProductDetailShimmer extends StatelessWidget {
  const ProductDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Category shimmer
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: 100.w,
            height: 20.h,
            color: Colors.grey[300],
          ),
        ),
        SizedBox(height: 8.h),

        // Product name shimmer
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: 200.w,
            height: 24.h,
            color: Colors.grey[300],
          ),
        ),
        SizedBox(height: 16.h),

        // Price and stock row shimmer
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      width: 80.w,
                      height: 24.h,
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      width: 50.w,
                      height: 20.h,
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      width: 40.w,
                      height: 20.h,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      width: 60.w,
                      height: 20.h,
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      width: 50.w,
                      height: 20.h,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),

        // Description shimmer
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: 100.w,
            height: 24.h,
            color: Colors.grey[300],
          ),
        ),
        SizedBox(height: 20.h),

        // Expandable text shimmer
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: double.infinity,
            height: 60.h,
            color: Colors.grey[300],
          ),
        ),
        SizedBox(height: 20.h),

        // Specification shimmer
        ...List.generate(3, (index) {
          return Column(
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: double.infinity,
                  height: 18.h,
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(height: 10.h),
            ],
          );
        }),
      ],
    );
  }
}
