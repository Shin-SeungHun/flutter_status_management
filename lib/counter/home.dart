import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_status_management/counter/count_cubit.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cubit 상태관리'),
      ),
      body: Center(
        child: BlocBuilder<CountCubit, int>(builder: (context, state) {
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
              context.read<CountCubit>().addCount();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CountCubit>().substractCount();
            },
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
