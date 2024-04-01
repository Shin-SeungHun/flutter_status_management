import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_status_management/counter/count_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bloc 상태관리'),
      ),
      body: Center(
        child: BlocBuilder<CountBloc, int>(builder: (context, state) {
          return Text(
            state.toString(),
            style: const TextStyle(fontSize: 80),
          );
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CountBloc>().add(AddCountEvent());
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CountBloc>().add(substractCountEvent());
            },
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
