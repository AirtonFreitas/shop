import 'package:flutter/material.dart';
import '../components/product_item.dart';
import '../data/dummy_data.dart';
import '../models/product.dart';

class ProductsOverviewPages extends StatelessWidget {
  final List<Product> loaderProducts = dummyProducts;
  ProductsOverviewPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Minha Loja'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: loaderProducts.length,
        itemBuilder: (ctx, i) => ProductItem(product: loaderProducts[i]),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
        ),
      ),
    );
  }
}