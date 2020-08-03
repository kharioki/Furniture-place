import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/screens/home/components/categories.dart';
import 'package:furniture_app/screens/home/components/recommended_products.dart';
import 'package:furniture_app/services/fetchCategories.dart';
import 'package:furniture_app/services/fetchProducts.dart';
import 'package:furniture_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(defaultSize * 2), // 20
              child: TitleText(title: 'Browse by Categories'),
            ),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(categories: snapshot.data)
                  : Image.asset('assets/ripple.gif'),
            ),
            Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2), // 20
              child: TitleText(title: 'Recommended for You'),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? RecommendedProducts(products: snapshot.data)
                    : Center(child: Image.asset('assets/ripple.gif'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
