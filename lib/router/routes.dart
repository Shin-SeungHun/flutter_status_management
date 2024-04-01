import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_status_management/di/di_setup.dart';
import 'package:flutter_status_management/observer/router_observer.dart';
import 'package:flutter_status_management/ui/main/main_screen.dart';
import 'package:flutter_status_management/ui/main/main_view_model.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  observers: [RouterObserver()],
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>
          BlocProvider(create: (context) => getIt<MainViewModel>(), lazy: false, child: const MainScreen()),
    ),
  ],
);
