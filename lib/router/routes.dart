import 'package:flutter_status_management/di/di_setup.dart';
import 'package:flutter_status_management/ui/main/main_screen.dart';
import 'package:flutter_status_management/ui/main/main_view_model.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => GetBuilder(
        init: getIt<MainViewModel>(),
        builder: (controller) => MainScreen(
          viewModel: Get.put(getIt<MainViewModel>()),
        ),
      ),
    ),
  ],
);
