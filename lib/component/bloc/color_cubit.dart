import 'dart:math';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(ColorInitial());

  void changeBackgroundColor() {
    final randomColor =
        Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
    emit(ColorChanged(randomColor));
  }

  void resetBackgroundColor() {
    emit(ColorInitial());
  }
}
