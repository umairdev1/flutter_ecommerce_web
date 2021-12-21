import 'package:flutter/material.dart';

class HeadPhoneProduct {
  final int id, price;
  final String title, image;

  HeadPhoneProduct({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

// Our headphone Products

List<HeadPhoneProduct> headphoneProducts = [
  HeadPhoneProduct(
    id: 1,
    image: 'assets/products/headphone/headphone1.jpeg',
    title: "Headphone 1",
    price: 34,
  ),
  HeadPhoneProduct(
    id: 2,
    image: "assets/products/headphone/headphone2.jpeg",
    title: "Headphone 2",
    price: 50,
  ),
  HeadPhoneProduct(
    id: 3,
    image: "assets/products/headphone/headphone3.jpeg",
    title: "Headphone 3",
    price: 65,
  ),
  HeadPhoneProduct(
    id: 4,
    image: "assets/products/headphone/headphone4.jpeg",
    title: "Headphone 4",
    price: 30,
  ),
];
