import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industy.Lorem Ipsum has been the industry's standart dummy text ever since. When an unknown printer took a gallery.";

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belty Bag",
      price: 123,
      size: 8,
      image: "assets/images/bag_2.png",
      description: dummyText,
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      image: "assets/images/bag_3.png",
      description: dummyText,
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Office Code",
      price: 234,
      size: 12,
      image: "assets/images/bag_4.png",
      description: dummyText,
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      image: "assets/images/bag_5.png",
      description: dummyText,
      color: const Color(0xFFFB7883)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      image: "assets/images/bag_6.png",
      description: dummyText,
      color: const Color(0xFFAEAEAE)),
];
