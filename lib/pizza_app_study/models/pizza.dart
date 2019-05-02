

import 'package:flutter/material.dart';

class Pizza{
  String image;
  Color background;
  Color foreground;
  String name;
  double starRating;
  String desc;
  double price;

  Pizza({this.image, this.background, this.foreground, this.name,
    this.starRating, this.desc, this.price});
}


class PizzaList{
  List<Pizza> pizzas;
  PizzaList({this.pizzas});
}

PizzaList pizzaList = PizzaList(pizzas: [
  Pizza(
    image: "assets/img/pizza/pizza.png",
    starRating: 4.5,
    name: "Buffalo Blue Cheese Chicken",
    desc:
    "Mozzarella Cheeze, Buffalo blue sauce, and your choice of grilled chicken or crispy chicken fingers",
    background: Color(0xfff2ca80),
    foreground: Colors.black,
    price: 13.00,
  ),
  Pizza(
    image: "assets/img/pizza/sweet_and_tangy.png",
    starRating: 4.5,
    name: "Sweet & Tangy Chicken",
    desc:
    "Mozzarella Cheeze, Buffalo blue sauce, and your choice of grilled chicken or crispy chicken fingers",
    background: Color(0xffd82a12),
    foreground: Colors.white,
    price: 12.99,
  ),
  Pizza(
    image: "assets/img/pizza/jamaican_jerk_veg.png",
    starRating: 4.5,
    name: "Jamaican \nJerk Veg",
    desc:
    "Mozzarella Cheeze, Buffalo blue sauce, and your choice of grilled chicken or crispy chicken fingers",
    background: Color(0xff4fc420),
    foreground: Colors.black,
    price: 12.99,
  ),
  Pizza(
    image: "assets/img/pizza/aussie_barbeque_veg.png",
    starRating: 4.5,
    name: "Aussie Barbeque Veg",
    desc:
    "Mozzarella Cheeze, Buffalo blue sauce, and your choice of grilled chicken or crispy chicken fingers",
    background: Color(0xff5d2512),
    foreground: Colors.white,
    price: 12.99,
  ),
  Pizza(
    image: "assets/img/pizza/indi_tandoori_paneer.png",
    starRating: 4.5,
    name: "Indi Tandoori Paneer",
    desc:
    "Mozzarella Cheeze, Buffalo blue sauce, and your choice of grilled chicken or crispy chicken fingers",
    background: Color(0xffdddbd8),
    foreground: Colors.black,
    price: 12.99,
  ),
  Pizza(
    image: "assets/img/pizza/african_peri_peri.png",
    starRating: 4.5,
    name: "African Saucy\nPeri Peri",
    desc:
    "Mozzarella Cheeze, Buffalo blue sauce, and your choice of grilled chicken or crispy chicken fingers",
    background: Color(0xffd54b1c),
    foreground: Colors.white,
    price: 12.99,
  ),
]);