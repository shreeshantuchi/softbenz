import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_detail/core/services/notification_service.dart';
import 'package:product_detail/feature/prouct_detail/data/datasource/product_detaial_datasource_impl.dart';
import 'package:product_detail/feature/prouct_detail/presentation/bloc/product_detail_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_detail/feature/prouct_detail/presentation/views/product_detail_base_view.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the notification service
  final notificationService = LocalNotificationService();
  await notificationService.initialize();
  await requestNotificationPermission();
  runApp(const MyApp());
}

Future<void> requestNotificationPermission() async {
  PermissionStatus status = await Permission.notification.status;
  print(status.name);
  if (status.isDenied || status.isPermanentlyDenied) {
    // Request notification permission
    status = await Permission.notification.request();
  }

  if (status.isGranted) {
    print("Notification permission granted");
  } else {
    print("Notification permission denied");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductDetailBloc>(
            create: (context) =>
                ProductDetailBloc(ProductDetialDatasourceImpl())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ScreenUtilInit(
          designSize: const Size(375, 872),
          builder: (context, child) => const ProductDetialBaseView(),
        ),
      ),
    );
  }
}
