import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_nr/data/constants.dart';
import 'package:wedding_nr/utils/button.dart';

class DirectionsButtonsWidget extends StatelessWidget {
  const DirectionsButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 14, top: 20, bottom: 20, right: 7),
            child: Button(
              label: Constants.kChuchLabel,
              icon: Icons.church,
              onPressed: () {
                launchUrl(Uri.parse(Constants.kChuchMapsLink));
              },
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding:
                const EdgeInsets.only(right: 14, top: 20, bottom: 20, left: 7),
            child: Button(
              label: Constants.kRestaurantLabel,
              icon: Icons.home_filled,
              onPressed: () {
                launchUrl(Uri.parse(Constants.kRestaurantMapsLink));
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
