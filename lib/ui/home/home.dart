import 'package:bloc_practice/ui/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Practice'),
      ),
      body: Column(
        children: [
          const Spacer(),
          BlocBuilder<HomeBloc, int>(
            builder: (context, value) {
              return Text(
                'You have pressed the button this many times: $value',
              );
            },
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  BlocProvider.of<HomeBloc>(context).increment();
                },
                icon: const Icon(
                  Icons.add,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.read<HomeBloc>().decrement();
                },
                icon: const Icon(
                  Icons.deck,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
