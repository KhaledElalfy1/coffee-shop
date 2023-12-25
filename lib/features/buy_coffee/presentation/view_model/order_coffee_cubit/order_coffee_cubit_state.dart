part of 'order_coffee_cubit_cubit.dart';

@immutable
sealed class OrderCoffeeCubitState {}

final class OrderCoffeeCubitInitial extends OrderCoffeeCubitState {}

final class OrderCoffeeCubitCounter extends OrderCoffeeCubitState {}
