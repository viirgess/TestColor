part of 'color_cubit.dart';

@immutable
class ColorState {}

class ColorInitial extends ColorState {}

class ColorChanged extends ColorState {
  final Color backgroundColor;

  ColorChanged(this.backgroundColor);
}
