import 'package:filter_theory/filter/filterable.dart';
import 'package:filter_theory/model/category.dart';
import 'package:filter_theory/model/product_data.dart';

class OrderByPrice implements Filterable {
  @override
  bool filter(ProductData product) {
    return true;
  }

  @override
  List<ProductData> order(List<ProductData> products) {
    return products
      ..sort((productA, productB) => productA.price.compareTo(productB.price));
  }
}

class FilterByCategory implements Filterable {
  final Category filterCriteria;

  FilterByCategory(this.filterCriteria);

  @override
  bool filter(ProductData product) {
    return filterCriteria == product.category;
  }

  @override
  List<ProductData> order(List<ProductData> products) {
    return products;
  }
}
