// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:provider/provider.dart';


// /// Product Card when an exception is caught
// class SmoothProductCardError extends StatelessWidget {
//   const SmoothProductCardError({
//     required this.barcode,
//     required this.errorType,
//   });

//   final String barcode;
//   final ScannedProductState errorType;

//   @override
//   Widget build(BuildContext context) {
//     final AppLocalizations appLocalizations = AppLocalizations.of(context);
//     final ThemeData themeData = Theme.of(context);

//     return Container(
//       decoration: BoxDecoration(
//         color: themeData.brightness == Brightness.light
//             ? Colors.white
//             : Colors.black,
//         borderRadius: ROUNDED_BORDER_RADIUS,
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SvgPicture.asset(
//               'assets/misc/error.svg',
//               width: MINIMUM_TOUCH_SIZE * 2,
//             ),
//           ),
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(barcode, style: Theme.of(context).textTheme.subtitle1),
//             ],
//           ),
//           const SizedBox(
//             height: 12.0,
//           ),
//           ProductDialogHelper.getErrorMessage(
//             _getErrorMessage(
//               errorType,
//               appLocalizations,
//             ),
//           ),
//           const SizedBox(
//             height: 12.0,
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               await context
//                   .read<ContinuousScanModel>()
//                   .retryBarcodeFetch(barcode);
//             },
//             child: Text(appLocalizations.retry_button_label),
//           ),
//         ],
//       ),
//     );
//   }

//   String _getErrorMessage(
//     ScannedProductState errorType,
//     AppLocalizations appLocalizations,
//   ) {
//     switch (errorType) {
//       case ScannedProductState.ERROR_INVALID_CODE:
//         return appLocalizations.barcode_invalid_error;
//       case ScannedProductState.ERROR_INTERNET:
//         return appLocalizations.product_internet_error;
//       default:
//         return appLocalizations.error_occurred;
//     }
//   }
// }
