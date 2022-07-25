import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:openfoodfacts/openfoodfacts.dart';

/// Actual nutrition page, with data already loaded.

class FDA extends StatelessWidget {
  const FDA({
    Key? key,
    required this.fetchedProduct,
  }) : super(key: key);

  final Product fetchedProduct;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 70,
              child: const Text(
                'Nutrition Facts',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: Column(
                children: [
                  // const Text(
                  //   'Nutrition Facts ',
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w900,
                  //     fontSize: 40,
                  //     color: _color,
                  //   ),
                  // ),
                  // Divider(
                  //   thickness: 10,
                  //   color: Theme.of(context).dividerColor,
                  // ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'The Coca Cola Company',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 32,
                        // color: Theme.of(context).cardColor,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 4, bottom: 4),
                    child: const Text(
                      'Coca Cola',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Serving size',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          fetchedProduct.servingSize!,
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 4,
                    color: Theme.of(context).dividerColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Amount per serving ',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Calories',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 37,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        fetchedProduct.nutriments!.energyServing.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 60,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: const Text(
                      '% Daily Value*',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total Fat',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          fetchedProduct.nutriments!.fat.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Saturated Fat ',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          fetchedProduct.nutriments!.saturatedFatServing
                              .toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 27,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Trans Fat ',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          fetchedProduct.nutriments!.transFat.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Cholesterol ',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          fetchedProduct.nutriments!.cholesterolServing
                              .toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 27,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sodium ${fetchedProduct.nutriments!.sodiumUnit}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        fetchedProduct.nutriments!.sodium.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 27),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total Carbonhydrate ' '50',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          '5%',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 27,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Dietary Fiber ' '8g',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          '55',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 27,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total Sugar ' '40g',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Protein ' '5g',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 37,
                          ),
                        ),
                        Text(
                          '40',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 27,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Calcium ' '20mg',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 27,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Iron ' '30g',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 25),
                        ),
                        Text(
                          '8',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Potassium ' '50mg',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          '90',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 27),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 16),
                    child: const Text(
                      '*Percent Daily Values are based on a 2000 calorie diet',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 64),
            )
          ],
        ),
      ),
    );
  }
}
