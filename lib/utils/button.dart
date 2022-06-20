import 'package:flutter/material.dart';
import 'package:wedding_nr/utils/styles.dart';

class Button extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const Button(
      {Key? key,
      required this.label,
      required this.icon,
      required this.onPressed})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          // Foreground color
          onPrimary: Theme.of(context).colorScheme.onSecondaryContainer,
          // Background color
          primary:
              Theme.of(context).colorScheme.secondaryContainer.withAlpha(100),
        ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(
              icon,
              color: Styles.kTextColor,
            ),
            Expanded(
              child: Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.fade,
                style: Styles.labelStyle().copyWith(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
