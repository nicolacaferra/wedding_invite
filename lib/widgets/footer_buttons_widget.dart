import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_nr/utils/button.dart';

class FooterButtonsWidget extends StatelessWidget {
  const FooterButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     // Padding(
        //     //   padding: const EdgeInsets.only(top: 20),
        //     //   child: AutoSizeText(
        //     //     text: Data.kHeaderButtons,
        //     //     textStyle: Styles.labelStyle().copyWith(fontSize: 24),
        //     //   ),
        //     // ),
        Row(
      children: [
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 20, bottom: 10, right: 5),
            child: Button(
              label: 'Indicazioni Chiesa',
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
                const EdgeInsets.only(right: 20, top: 20, bottom: 10, left: 5),
            child: Button(
              label: 'Indicazioni Sala',
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
