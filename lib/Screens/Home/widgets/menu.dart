import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/constants.dart';
import 'package:flutter_ecommerce_web/responsive.dart';

class Navigation extends StatelessWidget {
  const Navigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(
              maxWidth: kMaxWidth,
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: Icon(Icons.menu)),
                      //title
                      AutoSizeText(
                        "Spick-Android",
                        maxLines: 1,
                        minFontSize: 16,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width >= 348
                              ? 22
                              : 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),

                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: kDarkgreyColor,
                          size: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: kDarkgreyColor,
                          size: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person_outline,
                          color: kDarkgreyColor,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WebMenu extends StatelessWidget {
  const WebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuItems(
          isActive: true,
          title: 'Home',
          press: () {},
        ),
        MenuItems(
          title: 'Products',
          press: () {},
        ),
        MenuItems(
          title: 'Category',
          press: () {},
        ),
        MenuItems(
          title: 'Contact Us',
          press: () {},
        ),
      ],
    );
  }
}

class MobMenu extends StatelessWidget {
  const MobMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MenuItems(
              isActive: true,
              title: 'Home',
              press: () {},
            ),
            MenuItems(
              title: 'Products',
              press: () {},
            ),
          ],
        ),
        Row(
          children: [
            MenuItems(
              title: 'Category',
              press: () {},
            ),
            MenuItems(
              title: 'Contact Us',
              press: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class MenuItems extends StatefulWidget {
  final String title;
  final VoidCallback press;
  final bool isActive;
  const MenuItems(
      {Key? key,
      required this.title,
      required this.press,
      this.isActive = false})
      : super(key: key);

  @override
  _MenuItemsState createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: widget.press,
        onHover: (val) {
          setState(() {
            isHover = val;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: widget.isActive == true
                          ? kPrimaryColor
                          : isHover
                              ? kPrimaryColor
                              : Colors.transparent,
                      width: 4))),
          child: Text(
            widget.title,
            style: TextStyle(
              fontWeight: widget.isActive == true
                  ? FontWeight.bold
                  : isHover
                      ? FontWeight.bold
                      : FontWeight.normal,
              fontSize: _size.width >= 370 ? 18 : 14,
              color: widget.isActive == true
                  ? kPrimaryColor
                  : isHover
                      ? kPrimaryColor
                      : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
