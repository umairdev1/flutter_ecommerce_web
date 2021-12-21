import 'package:flutter/material.dart';

class SamsungProduct {
  final int id, price;
  final String title, image;

  SamsungProduct({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

// Our samsung Products

List<SamsungProduct> samsungProducts = [
  SamsungProduct(
    id: 1,
    image: 'assets/products/sumsung/samsung1.jpeg',
    title: "Samsung 1",
    price: 54,
  ),
  SamsungProduct(
    id: 2,
    image: "assets/products/sumsung/samsung2.jpeg",
    title: "Samsung 2",
    price: 80,
  ),
  SamsungProduct(
    id: 3,
    image: "assets/products/sumsung/samsung3.jpeg",
    title: "Samsung 3",
    price: 95,
  ),
  SamsungProduct(
    id: 4,
    image: "assets/products/sumsung/samsung4.jpeg",
    title: "Samsung 4",
    price: 50,
  ),
];
