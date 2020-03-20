import 'package:filter_theory/model/product_data.dart';
import 'package:filter_theory/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

class AppState extends InheritedWidget {
  AppState({
    Key key,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  final BehaviorSubject<List<ProductData>> products =
      BehaviorSubject.seeded([]);

  static AppState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppState>();
  }

  @override
  bool updateShouldNotify(AppState old) => products != old.products;
}
