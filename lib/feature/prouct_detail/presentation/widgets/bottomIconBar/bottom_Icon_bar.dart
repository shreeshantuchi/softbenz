import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:product_detail/core/custom_button.dart';
import 'package:product_detail/core/model/notification.dart';
import 'package:product_detail/core/services/notification_service.dart';
import 'package:product_detail/feature/prouct_detail/presentation/widgets/bottomIconBar/modle_bottom_view.dart';

class ProductDetailBottomBar extends StatelessWidget {
  const ProductDetailBottomBar({super.key});

  VoidCallback _debounce(VoidCallback callback, Duration duration) {
    bool isCooldown = false;
    return () {
      if (isCooldown) return;
      callback();
      isCooldown = true;
      Future.delayed(duration, () => isCooldown = false);
    };
  }

  void sendNotification() {
    LocalNotificationService notificationService = LocalNotificationService();
    notificationService.showNotification(
      notificaiton: NotificationModel(
        id: 1,
        title: "Welcome to Customer Chat",
        body: "Thank you for Contacting Us",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0.h),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10.r,
            offset: Offset(0, 4.r),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Left Icon
          CircleAvatar(
            radius: 15.r,
          ),
          IconButton(
            icon: Icon(PhosphorIconsRegular.chat),
            onPressed: _debounce(sendNotification, Duration(seconds: 1)),
            iconSize: 20.sp,
          ),
          // Center Elevated Button
          CustomButton(
              text: "Buy Now",
              onPressed: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return BottomSheetWidget();
                  })),
          CustomButton(
            text: "Add to Cart",
            onPressed: () {},
            backgroundColor: Colors.redAccent,
          )

          // Right Icon
        ],
      ),
    );
  }
}
