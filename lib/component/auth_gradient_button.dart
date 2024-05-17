import 'package:flutter/material.dart';
import '../theme/color_palette.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key, this.label, this.onPressed});

  final String? label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppPalette.gradient1,
            AppPalette.gradient2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: AppPalette.transparentColor,
          shadowColor: AppPalette.transparentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
        ),
        child: Text(
          label ?? "",
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}