import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_status_management/counter/count_bloc.dart';
import 'package:flutter_status_management/counter/home.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cubic'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(
                BlocProvider(create: (context) => CountBloc(), child: const Home()),
              );
            },
            child: const Text('cubit count'),
          ),
        ],
      ),
    );
  }
}
