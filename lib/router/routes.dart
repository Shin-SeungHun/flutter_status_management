import 'package:flutter_status_management/di/di_setup.dart';
import 'package:flutter_status_management/ui/main/main_screen.dart';
import 'package:flutter_status_management/ui/main/main_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (context) => getIt<MainViewModel>(),
        child: const MainScreen(),
      ),
    ),
  ],
);
