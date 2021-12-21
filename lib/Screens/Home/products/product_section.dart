import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/Screens/Home/products/widgets/headphone_product.dart';
import 'package:flutter_ecommerce_web/Screens/Home/products/widgets/samsung_products.dart';
import 'package:flutter_ecommerce_web/Screens/Home/widgets/author.dart';
import 'package:flutter_ecommerce_web/Screens/Home/widgets/menu.dart';
import 'package:flutter_ecommerce_web/constants.dart';
import 'package:flutter_ecommerce_web/model/trending_model.dart';
import 'package:flutter_ecommerce_web/responsive.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'widgets/allproducts.dart';
import 'widgets/category.dart';
import 'widgets/iphone_products.dart';
import 'widgets/trending_products.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: kMaxWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: kSecondaryColor, width: 3))),
                child: const Text(
                  "Brands",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Cateegory(),
              //trending product section
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: kSecondaryColor, width: 3))),
                child: const Text(
                  "Trending Products",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              if (Responsive.isDesktop(context)) const TrendingProductCard(),
              if (!Responsive.isDesktop(context)) const MobTrendingProduct(),

              //now we create trending Product model
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: kSecondaryColor, width: 3))),
                child: const Text(
                  "Our Products",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const AllBrandsProduct(),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: kSecondaryColor, width: 3))),
                child: const Text(
                  "Author",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Author(),
              ),
              // now add all brands data
              //first of all we create model

              const SizedBox(
                height: 100,
              ),
              //bottom Navigation menu
            ],
          ),
        ),
      ],
    );
  }
}
