import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_colors_app/component/bloc/color_cubit.dart';
import 'package:test_colors_app/util/color_source.dart';
import 'package:test_colors_app/util/text_style.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorState>(
      builder: (context, state) {
        Color backgroundColor = ColorSourceApp.white;
        if (state is ColorChanged) {
          backgroundColor = state.backgroundColor;
        }
        return GestureDetector(
          onTap: () {
            context.read<ColorCubit>().changeBackgroundColor();
          },
          child: Scaffold(
            body: AnimatedContainer(
              duration: const Duration(seconds: 1),
              color: backgroundColor,
              child: Column(
                children: [
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Hello there',
                      style: TextStyleApp.height16
                          .copyWith(color: ColorSourceApp.black),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        context.read<ColorCubit>().resetBackgroundColor();
                      },
                      child: const Icon(
                        Icons.refresh_sharp,
                        size: 30,
                        color: ColorSourceApp.lightGrey,
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
