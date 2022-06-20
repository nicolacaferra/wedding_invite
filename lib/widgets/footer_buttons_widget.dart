import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_nr/utils/button.dart';

class FooterButtonsWidget extends StatelessWidget {
  const FooterButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 14, top: 20, bottom: 20, right: 7),
            child: Button(
              label: 'Indicazioni\nChiesa',
              icon: Icons.church,
              onPressed: () {
                launchUrl(Uri.parse('https://goo.gl/maps/h5a1icpqs8VrSkuE8'));
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.only(right: 14, top: 20, bottom: 20, left: 7),
            child: Button(
              label: 'Indicazioni\nSala',
              icon: Icons.home_filled,
              onPressed: () {
                launchUrl(Uri.parse('https://goo.gl/maps/nLdSUCCf8zuGRaH6A'));
              },
            ),
          ),
        ),
      ],
    );
    //   ],
    // );
  }
}
