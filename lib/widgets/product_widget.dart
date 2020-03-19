import 'package:filter_theory/model/product_data.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final ProductData data;
  const ProductWidget({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Product name:${data.name}'),
          Text('Product price:${data.price}'),
          Text('Product rate general:${data.rategeneral}'),
          Text('Product category:${data.category}'),
        ]),
      ),
    );
  }
}
