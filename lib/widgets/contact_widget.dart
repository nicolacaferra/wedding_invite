import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_nr/utils/autosize_text_widget.dart';
import 'package:wedding_nr/utils/styles.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const iconColor = Styles.kTextColor;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 5, right: 15, top: 40),
      child: Row(
        children: [
          Expanded(
            child: AutoSizeText(
              text: 'Hai domande? Contattaci!',
              textStyle: Styles.countdownStyle().copyWith(fontSize: 24),
            ),
          ),
          // const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: IconButton(
              onPressed: () {
                launchUrl(Uri.parse(
                  'https://wa.me/+393336163090',
                ));
              },
              icon: const Icon(Icons.whatsapp),
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: IconButton(
              onPressed: () {
                launchUrl(Uri.parse(
                  'https://t.me/ncl_cfr',
                ));
              },
              icon: const Icon(Icons.telegram_outlined),
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: IconButton(
              onPressed: () {
                launchUrl(Uri.parse(
                  'mailto:info@3settembre.it',
                ));
              },
              icon: const Icon(Icons.mail),
              color: iconColor,
            ),
          ),
          // IconButton(
          //   onPressed: () {
          //     launchUrl(Uri.parse(
          //       'https://api.whatsapp.com/send?phone=+393336163090',
          //     ));
          //   },
          //   icon: const Icon(Icons.phone),
          //   color: iconColor,
          // ),
        ],
      ),
    );
    //   ],
    // );
  }
}
