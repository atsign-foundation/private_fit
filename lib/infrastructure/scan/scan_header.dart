import 'package:flutter/material.dart';
import 'package:private_fit/infrastructure/scan/continuous_scan_model.dart';
import 'package:provider/provider.dart';

class ScanHeader extends StatelessWidget {
  const ScanHeader({
    super.key,
  });

  static const Duration _duration = Duration(milliseconds: 50);
  static const double _visibleOpacity = 0.8;
  static const double _invisibleOpacity = 0;

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ContinuousScanModel>();

    final buttonStyle = ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );

    return AnimatedOpacity(
      opacity:
          model.getBarcodes().isNotEmpty ? _visibleOpacity : _invisibleOpacity,
      duration: _duration,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ElevatedButton.icon(
              style: buttonStyle,
              icon: const Icon(Icons.cancel_outlined),
              onPressed: () {},
              label: const Text('clear'),
            ),
            ElevatedButton.icon(
              style: buttonStyle,
              icon: const Icon(Icons.open_in_browser),
              onPressed: () {},
              label: const Text(
                '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
