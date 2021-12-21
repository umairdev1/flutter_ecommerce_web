import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/responsive.dart';

import '../../../../constants.dart';

class Cateegory extends StatelessWidget {
  const Cateegory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        if (Responsive.isDesktop(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                  image: "assets/products/banner/banner_1.png",
                  title: 'HeadPhone',
                  press: () {}),
              CategoryCard(
                  image: "assets/products/banner/banner_2.png",
                  title: 'iPhone',
                  press: () {}),
              CategoryCard(
                  image: "assets/products/sumsung/samsung4.jpeg",
                  title: 'Samsung',
                  press: () {}),
            ],
          ),
        if (!Responsive.isDesktop(context))
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                  image: "assets/products/banner/banner_1.png",
                  title: 'HeadPhone',
                  press: () {}),
              CategoryCard(
                  image: "assets/products/banner/banner_2.png",
                  title: 'iPhone',
                  press: () {}),
              CategoryCard(
                  image: "assets/products/sumsung/samsung4.jpeg",
                  title: 'Samsung',
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
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: Container(
          width: _size.width <= 770
              ? _size.width
              : _size.width >= 975
                  ? 300
                  : 200,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          decoration: BoxDecoration(
              color: kgreyColor, boxShadow: [if (isHover) kDefaultShadow]),
          child: Column(
            children: [
              Image.asset(
                widget.image,
                height: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                color: kSecondaryColor,
                height: 40,
                onPressed: () {},
                child: Text(
                  widget.title,
                  style: TextStyle(color: kWhiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
