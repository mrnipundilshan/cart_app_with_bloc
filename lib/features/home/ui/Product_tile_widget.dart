import 'package:cart_app_with_bloc/features/home/models/home_product_data.dart';
import 'package:flutter/material.dart';

class ProductTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  const ProductTileWidget({super.key, required this.productDataModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
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

          Text(productDataModel.name),
          Text(productDataModel.description),
        ],
      ),
    );
  }
}
