import 'package:flutter/material.dart';
import 'package:shop/pages/product_detail_page.dart';
import '../models/product.dart';
import '../utils/app_routes.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.of(context).pushNamed(
                AppRoutes.PRODUCT_DETAIL,
                arguments: product
              );
            }),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Theme.of(context).accentColor),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {},
              color: Theme.of(context).accentColor),
        ),
      ),
    );
  }
}
