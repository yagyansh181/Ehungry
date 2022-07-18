import 'package:soothing/models/Items.dart';
import 'package:soothing/models/Types.dart';
import 'package:soothing/models/food.dart';

final Count = Items(count: [burger, pizza, taco, chicken]);

final cart = [];
//Food
final burger =
    Food(food: 'Burger', imageurl: 'assets/burger.png', menu: _burgerMenu);
final pizza =
    Food(food: 'Pizza', imageurl: 'assets/pizza.png', menu: _pizzaMenu);
final taco = Food(food: 'Taco', imageurl: 'assets/taco.png', menu: _tacoMenu);
final chicken =
    Food(food: 'Chicken', imageurl: 'assets/chicken.png', menu: _chickenMenu);

final _burgerMenu = [
  Types(
    name: 'American burger',
    image: 'assets/american_style.jpg',
    star: "4.2",
    price: 12.99,
    cal: "328 Kcal",
    number: 1,
  ),
  Types(
    name: 'Jumbo burger',
    image: 'assets/jumbo_burger.jpg',
    star: "4.6",
    price: 15.99,
    cal: "452 Kcal",
    number: 1,
  ),
  Types(
    name: 'Pork Burger',
    image: 'assets/pork_burger.jpg',
    star: "4.0",
    price: 10.99,
    cal: "344 Kcal",
    number: 1,
  ),
];
final _pizzaMenu = [
  Types(
    name: 'Tandoori Pizza',
    image: 'assets/tandoori_panner.jpg',
    star: "4.2",
    price: 13.99,
    cal: "234 Kcal",
    number: 1,
  ),
  Types(
    name: 'Mozzarella Pizza',
    image: 'assets/Mozzarella.jpg',
    star: "4.9",
    price: 12.99,
    cal: "124 Kcal",
    number: 1,
  ),
  Types(
    name: 'Pepperoni Pizza',
    image: 'assets/Pepperoni_Pizza.jpg',
    star: "4.6",
    price: 16.99,
    cal: "278 Kcal",
    number: 1,
  ),
];

final _chickenMenu = [
  Types(
    name: 'chicken biryani',
    image: 'assets/chicken_biryani.jpg',
    star: "3.6",
    price: 19.99,
    cal: "789 Kcal",
    number: 1,
  ),
  Types(
    name: 'chicken roasted',
    image: 'assets/chicken_roasted.jpg',
    star: "3.9",
    price: 29.99,
    cal: "679 Kcal",
    number: 1,
  ),
  Types(
    name: 'Fried chicken',
    image: 'assets/fried_chicken.jpg',
    star: "4.3",
    price: 30.99,
    cal: "576 Kcal",
    number: 1,
  ),
  Types(
    name: 'roasted_chicken',
    image: 'assets/roasted_chicken.jpg',
    star: "4.2",
    price: 10.99,
    cal: "456 Kcal",
    number: 1,
  ),
];

final _tacoMenu = [
  Types(
    name: 'Barbacoa Tacos',
    image: 'assets/Barbacoa_Tacos.jpg',
    star: "4.5",
    price: 12.99,
    cal: "197 Kcal",
    number: 1,
  ),
  Types(
    name: 'Guisados',
    image: 'assets/Guisados.jpg',
    star: "4.7",
    price: 14.99,
    cal: "179 Kcal",
    number: 1,
  ),
  Types(
    name: 'Suadero Tacos',
    image: 'assets/Suadero_tacos.jpg',
    star: "5.0",
    price: 15.99,
    cal: "198 Kcal",
    number: 1,
  ),
  Types(
    name: 'farias',
    image: 'assets/farias.jpg',
    star: "3.8",
    price: 13.99,
    cal: "209 Kcal",
    number: 1,
  ),
];
