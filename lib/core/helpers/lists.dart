import 'package:coffe_shop/core/models/coffee_model.dart';

class CoffeeLists {
  static List<String> coffeeTypes = [
    'Espresso',
    'Cappuccino',
    'Latte',
    'Macchiato',
    'Americano',
    'Mocha',
  ];
 static List<CoffeeModel> coffee = [
    CoffeeModel(
      image: 'assets/images/coffee1.png',
      type: 'Cappuccino',
      component: 'with Chocolate',
      price: 4.53,
      rate: 4.8,
      numberOfReviewers: 202,
      description:
          'Indulge in the rich and velvety goodness of our Chocolate Cappuccino. Made with the finest espresso and topped with a generous layer of creamy chocolate foam, this delightful beverage is a treat for your taste buds. Whether you are a chocolate lover or a coffee enthusiast, our Chocolate Cappuccino is sure to satisfy your cravings.',
    ),
    CoffeeModel(
      image: 'assets/images/coffee2.png',
      type: 'Cappuccino',
      component: 'with Oat Milk',
      price: 3.90,
      rate: 3.9,
      numberOfReviewers: 194,
      description:
          'Experience the perfect blend of rich espresso and velvety oat milk with our Oat Milk Cappuccino. The smooth and creamy texture of oat milk complements the bold flavors of espresso, creating a delicious harmony in every sip. This dairy-free alternative is perfect for those who crave a luscious cappuccino without compromising on taste.',
    ),
    CoffeeModel(
      image: 'assets/images/coffee3.png',
      type: 'Cappuccino',
      component: 'with Oat Milk',
      price: 5.0,
      rate: 4.5,
      numberOfReviewers: 100,
      description:
          'Elevate your coffee experience with our Special Oat Milk Cappuccino. Crafted with extra care, this cappuccino features the unique and wholesome goodness of oat milk. The result is a frothy and satisfying beverage that caters to both your love for coffee and your desire for a nourishing alternative. Treat yourself to a special moment with every sip.',
    ),
    CoffeeModel(
      image: 'assets/images/coffee4.png',
      type: 'Cappuccino',
      component: 'with Chocolate',
      price: 5.50,
      rate: 4.0,
      numberOfReviewers: 205,
      description:
          'Savor the blissful combination of espresso and chocolate with our Chocolate Bliss Cappuccino. This indulgent drink is a perfect harmony of rich cocoa and premium coffee, creating a luxurious experience for your senses. Topped with a swirl of whipped cream, it\'s a heavenly treat for chocolate and coffee aficionados alike.',
    ),
  ];
}
