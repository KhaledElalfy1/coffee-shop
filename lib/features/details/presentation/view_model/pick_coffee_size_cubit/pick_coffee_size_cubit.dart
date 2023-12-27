import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pick_coffee_size_state.dart';

class PickCoffeeSizeCubit extends Cubit<PickCoffeeSizeState> {
  PickCoffeeSizeCubit() : super(PickCoffeeSizeInitial());
  double totalPrice = 0;
  bool small = false;
  bool medium = false;
  bool large = false;
  void pickCoffeeSize({required String size, required double price}) {
    if (size == 'S') {
      totalPrice = price;
      small = true;
      medium = false;
      large = false;
    } else if (size == 'M') {
      totalPrice = price * 1.5;
      small = false;
      medium = true;
      large = false;
    } else if (size == 'L') {
      totalPrice = price * 1.75;
      small = false;
      medium = false;
      large = true;
    }
    totalPrice = double.parse(totalPrice.toStringAsFixed(2));
    emit(PickCoffeeSizeDone());
  }
}
