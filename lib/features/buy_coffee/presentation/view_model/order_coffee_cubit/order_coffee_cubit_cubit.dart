import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'order_coffee_cubit_state.dart';

class OrderCoffeeCubit extends Cubit<OrderCoffeeCubitState> {
  OrderCoffeeCubit() : super(OrderCoffeeCubitInitial());

  int count = 1;
  double finalPrice = 0, coffeePrice = 0;
  void makeOrderDone({required double price, required String counter}) {
    coffeePrice = price;
    emit(OrderCoffeeCubitCounter());
    if (counter == 'i') {
      count++;
    } else if (counter == 'd') {
      count--;
      if (count == 0) {
        count = 1;
      }
    }
    finalPrice = (price * count) - 1;
    finalPrice = double.parse(finalPrice.toStringAsFixed(2));
    emit(OrderCoffeeCubitCounter());
  }
}
