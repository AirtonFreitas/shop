import 'package:flutter/material.dart';
import '../components/product_grid.dart';

class ProductsOverviewPages extends StatelessWidget {

  ProductsOverviewPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Minha Loja'),
      ),
      body: ProductGrid(),
    );
  }
}
