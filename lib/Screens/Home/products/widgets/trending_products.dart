import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/constants.dart';
import 'package:flutter_ecommerce_web/model/trending_model.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TrendingProductCard extends StatelessWidget {
  const TrendingProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGridView.countBuilder(
        //shrink wrap to avoid error
        shrinkWrap: true,
        physics: ScrollPhysics(),
        crossAxisCount: 4,
        itemCount: trendingProducts.length,
        itemBuilder: (BuildContext context, int index) => TrendingProducts(
          press: () {},
          products: trendingProducts[index],
        ),
        staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}

class MobTrendingProduct extends StatelessWidget {
  const MobTrendingProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGridView.countBuilder(
        //shrink wrap to avoid error
        shrinkWrap: true,
        physics: ScrollPhysics(),
        crossAxisCount: 2,
        itemCount: trendingProducts.length,
        itemBuilder: (BuildContext context, int index) => TrendingProducts(
          press: () {},
          products: trendingProducts[index],
        ),
        staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}

class TrendingProducts extends StatefulWidget {
  final Product products;
  final VoidCallback press;
  const TrendingProducts({
    Key? key,
    required this.products,
    required this.press,
  }) : super(key: key);

  @override
  State<TrendingProducts> createState() => _TrendingProductsState();
}

class _TrendingProductsState extends State<TrendingProducts> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: kDefaultDuration,
          width: 300,
          height: 250,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: kgreyColor, width: 3),
              boxShadow: [if (isHover) kDefaultShadow]),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(
                      widget.products.image,
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.products.title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$${widget.products.price}",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              isHover
                  ? Container(
                      color: Colors.black12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            color: kSecondaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            height: 40,
                            onPressed: () {},
                            child: const Text(
                              "Quick View",
                              style: TextStyle(color: kWhiteColor),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            color: kSecondaryColor,
                            height: 40,
                            onPressed: () {},
                            child: const Text(
                              "Shop Now",
                              style: TextStyle(color: kWhiteColor),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ));
  }
}
