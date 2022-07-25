// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class SettingsCategory extends StatefulWidget {
  const SettingsCategory({
    Key? key,
    required this.category,
    required this.children,
  }) : super(key: key);
  final String category;
  final List<Widget> children;
  @override
  State<SettingsCategory> createState() => _SettingsCategoryState();
}

class _SettingsCategoryState extends State<SettingsCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 7,
          ),
          child: Text(
            widget.category,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.1),
            ),
            child: Column(
              children: <Widget>[
                for (final Widget child in widget.children) child,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
