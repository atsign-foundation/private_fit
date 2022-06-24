// import 'package:flutter/material.dart';
// import 'package:private_fit/infrastructure/scan/continuous_scan_model.dart';
// import 'package:provider/provider.dart';


// Future<void> openPersonalizedRankingPage(BuildContext context) async {
//   final ContinuousScanModel model = context.read<ContinuousScanModel>();
//   // await model.refreshProductList();
//   //ignore: use_build_context_synchronously
//   await Navigator.push<Widget>(
//     context,
//     MaterialPageRoute<Widget>(
//       builder: (BuildContext context) => PersonalizedRankingPage(
//         products: model.productList.getList(),
//         title: ProductQueryPageHelper.getProductListLabel(
//           model.productList,
//           context,
//         ),
//       ),
//     ),
//   );
//   await model.refresh();
// }
