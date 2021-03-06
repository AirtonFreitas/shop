import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/utils/app_routes.dart';

import 'models/product_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.green,
            accentColor: Colors.greenAccent,
            fontFamily: 'Lato'),
        home: ProductsOverviewPages(),
        routes: {AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage()},
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
