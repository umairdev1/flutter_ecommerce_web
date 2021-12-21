import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/responsive.dart';

import '../../../../constants.dart';

//copy all data
class Author extends StatelessWidget {
  const Author({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (Responsive.isDesktop(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                  image: "assets/products/users/user-1.png",
                  title: 'Alexa',
                  press: () {}),
              CategoryCard(
                  image: "assets/products/users/user-2.png",
                  title: 'Jack',
                  press: () {}),
              CategoryCard(
                  image: "assets/products/users/user-3.png",
                  title: 'Erin',
                  press: () {}),
            ],
          ),
        if (!Responsive.isDesktop(context))
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                  image: "assets/products/users/user-1.png",
                  title: 'Alexa',
                  press: () {}),
              CategoryCard(
                  image: "assets/products/users/user-2.png",
                  title: 'Jack',
                  press: () {}),
              CategoryCard(
                  image: "assets/products/users/user-3.png",
                  title: 'Erin',
                  press: () {}),
            ],
          ),
      ],
    );
  }
}

class CategoryCard extends StatefulWidget {
  const CategoryCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: _size.width <= 770
              ? _size.width
              : _size.width >= 975
                  ? 300
                  : 200,
          decoration: BoxDecoration(
              color: kgreyColor, boxShadow: [if (isHover) kDefaultShadow]),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  widget.image,
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                color: kSecondaryColor,
                onPressed: () {},
                child: const Text(
                  "See Details",
                  style: TextStyle(color: kWhiteColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
