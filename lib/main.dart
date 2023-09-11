import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'component/bloc/color_cubit.dart';
import 'component/screen/main_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BlocProvider<ColorCubit>(
      create: (context) => ColorCubit(),
      child: const MainScreen(),
    ),
  ));
}
