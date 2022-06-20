import 'package:flutter/material.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/app_styles.dart';

class LargeIconButton extends StatelessWidget {
  const LargeIconButton({
    Key? key,
    required this.buttonName,
    required this.iconImage,
    required this.onPressed,
  }) : super(key: key);

  final String buttonName, iconImage;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: SizedBox(
        height: 30,
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: SizedBox(
                // height: 25,
                child: Image.asset(iconImage),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 3,
              child: Text(
                buttonName,
                style: kBodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
