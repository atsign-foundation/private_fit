// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

void showToast(
  BuildContext? context,
  String msg, {
  double? width,
  bool isError = false,
}) =>
    ScaffoldMessenger.of(context!).showSnackBar(
      SnackBar(
        content: Text(
          msg,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        duration: const Duration(milliseconds: 3000),
        elevation: 0,
        margin: width != null
            ? null
            : EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.2),
        backgroundColor:
            isError ? Colors.red[700] : Theme.of(context).primaryColor,
        padding: const EdgeInsets.all(10),
        width: width,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: Platform.isAndroid
              ? BorderRadius.circular(50)
              : BorderRadius.circular(10),
        ),
      ),
    );
