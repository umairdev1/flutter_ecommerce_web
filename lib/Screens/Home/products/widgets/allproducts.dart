import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/constants.dart';
import 'package:flutter_ecommerce_web/responsive.dart';

import 'headphone_product.dart';
import 'iphone_products.dart';
import 'samsung_products.dart';

class AllBrandsProduct extends StatefulWidget {
  const AllBrandsProduct({Key? key}) : super(key: key);

  @override
  _AllBrandsProductState createState() => _AllBrandsProductState();
}

class _AllBrandsProductState extends State<AllBrandsProduct> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TabBar(
                indicatorColor: kPrimaryColor,
                unselectedLabelColor: Colors.black,
                labelColor: kPrimaryColor,
                indicatorWeight: 2.0,
                unselectedLabelStyle: TextStyle(
                  fontSize: _size.width >= 414 ? 18 : 12,
                ),
                labelStyle: TextStyle(
                  fontSize: _size.width >= 414 ? 18 : 12,
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  Tab(
                    text: "iPhone",
                  ),
                  Tab(
                    text: "Samsung",
                  ),
                  Tab(
                    text: "Headphone",
                  ),
                ]),
            if (Responsive.isDesktop(context))
              Container(
                height: 350,
                child: const TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: iPhoneProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: SamsungProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: HeadPhoneProductCard(),
                    ),
                  ],
                ),
              ),
            if (!Responsive.isDesktop(context))
              Container(
                height: 600,
                child: const TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: MobiPhoneProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: MobSamsungProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: MobHeadPhoneProductCard(),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
