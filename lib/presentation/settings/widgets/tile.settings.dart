// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:private_fit/presentation/components/global.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    Key? key,
    this.trailing,
    this.height,
    this.color,
    required this.lable,
    this.subLable,
    required this.leading,
    required this.onTap,
  }) : super(key: key);
  final Widget? trailing;
  final double? height;
  final Widget leading;
  final Color? color;
  final GestureTapCallback? onTap;
  final String lable;
  final String? subLable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 70,
        width: double.infinity,
        color: color,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: squareWidget(
                50,
                child: leading,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  lable,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                vSpacer(3),
                if (subLable != null)
                  Text(
                    subLable!,
                    maxLines: 2,
                    softWrap: true,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
              ],
            ),
            const Spacer(),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}
