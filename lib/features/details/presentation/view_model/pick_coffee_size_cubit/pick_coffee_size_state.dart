part of 'pick_coffee_size_cubit.dart';

@immutable
sealed class PickCoffeeSizeState {}

final class PickCoffeeSizeInitial extends PickCoffeeSizeState {}

final class PickCoffeeSizeDone extends PickCoffeeSizeState {}
