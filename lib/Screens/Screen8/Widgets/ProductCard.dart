import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Model/ProductModel/Product.dart';
import 'package:laza/Model/providers/Other_controllers.dart';
import 'package:laza/Screens/screen9/screen9.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatefulWidget {
  Product product;

  ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    ProviderController providerController =
        Provider.of<ProviderController>(context);
    List<Product> productList = providerController.wishList;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffEFEFEF),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => Screen9(
                                pro: widget.product,
                              )));
                },
                child: Image.asset(
                  widget.product.thumbnails,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: -15.0,
                  left: 85.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      color: Colors.grey,
                      onPressed: () {
                        print("Add to Wish List clicked");
                        productList[widget.product.id].name ==
                                widget.product.name
                            ? print("This product already exists")
                            : providerController.addToWishList(widget.product);
                      },
                      icon: productList[widget.product.id].name ==
                              widget.product.name
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(Icons.favorite_border_outlined),
                    ),
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.transparent,
                child: Text(
                  widget.product.name,
                ),
              ),
              Container(
                color: Colors.transparent,
                child: Text(
                  widget.product.descriptions!,
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              Container(
                color: Colors.transparent,
                child: Text(
                  widget.product.price.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
