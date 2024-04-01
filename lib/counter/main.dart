import 'package:flutter/material.dart';
import 'package:flutter_status_management/counter/app.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const App(),
    );
  }
}
