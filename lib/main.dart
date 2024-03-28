import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_status_management/di/di_setup.dart';
import 'package:flutter_status_management/router/routes.dart';

void main() {
  diSetup();
  runApp(
    // ProviderScope를 추가하여 프로젝트 전체에 Riverpod를 활성화
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.indigo),
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
