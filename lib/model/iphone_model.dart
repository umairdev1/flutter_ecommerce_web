import 'package:flutter/material.dart';

class IphoneProduct {
  final int id, price;
  final String title, image;

  IphoneProduct({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

// Our iPhone Products

List<IphoneProduct> iPhoneProducts = [
  IphoneProduct(
    id: 1,
    image: 'assets/products/iPhone/iphone1.jpeg',
    title: "iPhone 1",
    price: 164,
  ),
  IphoneProduct(
    id: 2,
    image: "assets/products/iPhone/iphone2.jpeg",
    title: "iPhone 2",
    price: 150,
  ),
  IphoneProduct(
    id: 3,
    image: "assets/products/iPhone/iphone3.jpeg",
    title: "iPhone 3",
    price: 145,
  ),
  IphoneProduct(
    id: 4,
    image: "assets/products/iPhone/iphone4.jpeg",
    title: "iPhone 4",
    price: 136,
  ),
];
