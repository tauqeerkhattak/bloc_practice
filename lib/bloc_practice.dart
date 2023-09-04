import 'package:bloc_practice/ui/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/home/home.dart';

class BlocPractice extends StatelessWidget {
  const BlocPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(),
      child: MaterialApp(
        home: const Home(),
        theme: Theme.of(context).copyWith(
          useMaterial3: true,
        ),
      ),
    );
  }
}
