import 'package:flutter/material.dart';
import 'package:flutter_status_management/counter/count_getx_controller.dart';
import 'package:flutter_status_management/counter/home.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('getx count'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(
                const Home(),
                binding: BindingsBuilder(
                  () {
                    Get.put(CountGetxController());
                  },
                ),
                duration: Duration.zero,
              );
            },
            child: const Text('getx count'),
          ),
        ],
      ),
    );
  }
}
