import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../utils/app_routes.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(
      context,
      listen: false,
    );
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.of(context)
                  .pushNamed(AppRoutes.PRODUCT_DETAIL, arguments: product);
            }),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: Consumer<Product>(builder: (ctx, product, _) =>
          IconButton(
              icon: Icon(
                  product.isFavorite ? Icons.favorite : Icons.favorite_border),
              onPressed: () {
                product.toggleFavorite();
              },
              color: Theme.of(context).accentColor),),
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
