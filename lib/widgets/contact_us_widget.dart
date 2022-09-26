import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_nr/data/constants.dart';
import 'package:wedding_nr/utils/autosize_text_widget.dart';
import 'package:wedding_nr/utils/styles.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const iconColor = Styles.kTextColor;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 5, right: 15, top: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: AutoSizeText(
              text: Constants.kHaveQuestionsLabel,
              textStyle: Styles.countdownStyle().copyWith(fontSize: 24),
            ),
          ),
          // const Spacer(),
          const SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: IconButton(
              onPressed: () {
                launchUrl(Uri.parse(
                  Constants.kWhatsappLink,
                ));
              },
              icon: const Icon(Icons.whatsapp),
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: IconButton(
              onPressed: () {
                launchUrl(Uri.parse(
                  Constants.kTelegramLink,
                ));
              },
              icon: const Icon(Icons.telegram_outlined),
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: IconButton(
              onPressed: () {
                launchUrl(Uri.parse(
                  Constants.kMailLink,
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
