import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(product.title),
      ),
      body: Column(
        children: [
          Image.network(product.imageUrl, fit: BoxFit.cover),
          Text (product.description, style: TextStyle(fontSize: 25),),
        ],
      ),
    );
  }
}
