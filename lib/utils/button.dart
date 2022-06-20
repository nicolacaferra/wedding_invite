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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          // Foreground color
          // onPrimary: Theme.of(context).colorScheme.onSecondaryContainer,
          // Background color
          primary: Styles.kTextColor.withAlpha(50),
          // Theme.of(context).colorScheme.secondaryContainer.withAlpha(100),
        ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
        onPressed: onPressed,
        child: Row(
          children: [
            // const SizedBox(width: 10),
            Icon(
              icon,
              color: Styles.kTextColor,
            ),
            // const SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  style: Styles.labelStyle().copyWith(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
