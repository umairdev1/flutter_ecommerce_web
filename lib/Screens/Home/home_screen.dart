import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/Screens/Home/widgets/banner.dart';
import 'package:flutter_ecommerce_web/constants.dart';

import 'products/product_section.dart';
import 'widgets/bottomnav.dart';
import 'widgets/menu.dart';
import '';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      //scrollable widget
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  "Spick-Android",
                  textScaleFactor: 1.6,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  MenuItems(
                    isActive: true,
                    title: 'Home',
                    press: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MenuItems(
                    title: 'Products',
                    press: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MenuItems(
                    title: 'Category',
                    press: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MenuItems(
                    title: 'Contact Us',
                    press: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            //now we create menu and header
            Navigation(),
            //now we create banner
            //for this import packages
            HeroBanner(),
            ProductSection(),
            BottomNav()
            //now we will make our site responsive
          ],
        ),
      ),
    );
  }
}
