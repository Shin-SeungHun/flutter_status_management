import 'package:flutter/material.dart';
import 'package:flutter_status_management/counter/count_getx_controller.dart';
import 'package:get/get.dart';

class Home extends GetView<CountGetxController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('getx 상태관리'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            controller.count.value.toString(),
            style: const TextStyle(fontSize: 80),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.addCount();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              controller.substractCount();
            },
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
