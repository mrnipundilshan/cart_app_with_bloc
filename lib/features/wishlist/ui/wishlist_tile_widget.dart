import 'package:cart_app_with_bloc/features/home/models/home_product_data.dart';
import 'package:cart_app_with_bloc/features/wishlist/bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';

class WishlistTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final WishlistBloc wishlistBloc;

  const WishlistTileWidget({
    super.key,
    required this.productDataModel,
    required this.wishlistBloc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(productDataModel.imageUrl),
              ),
            ),
          ),

          Text(
            productDataModel.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(productDataModel.description),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rs.${productDataModel.price}",
                style: TextStyle(fontSize: 18),
              ),

              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {
                      wishlistBloc.add(
                        WishlistRemoveFromWishlistEvent(
                          productDataModel: productDataModel,
                        ),
                      );
                    },
                    icon: Icon(Icons.shopping_bag),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
