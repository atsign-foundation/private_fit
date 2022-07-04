<<<<<<< HEAD
import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
=======
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
>>>>>>> feature/openfoodfacts
import 'package:private_fit/domain/open_food/open_food_fetched_product.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({Key? key, required this.fetchedProduct})
      : super(key: key);
  final FetchedProduct fetchedProduct;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: CupertinoNavigationBar(
        leading: Container(),
        middle: const Text('PRODUCT DETAILS'),
      ),
      child: Center(
        child: AutoSizeText(fetchedProduct.product!.productName!),
      ),
    );
  }
}

class ProductView extends StatelessWidget {
  const ProductView({Key? key, required this.fetchedProduct}) : super(key: key);
  final FetchedProduct fetchedProduct;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Container(),
          middle: const Text('Modal Page'),
        ),
        child: Center(
          child: Column(
            children: [
              AutoSizeText(fetchedProduct.product!.productName!),
            ],
          ),
        ),
      ),
    );
  }
}
