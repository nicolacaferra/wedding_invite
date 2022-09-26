import 'package:flutter/cupertino.dart';
import 'package:wedding_nr/data/constants.dart';
import 'package:wedding_nr/utils/autosize_text_widget.dart';
import 'package:wedding_nr/utils/styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: AutoSizeText(
          text: Constants.kWeddingHeaderLabel,
          textStyle: Styles.labelStyle(),
          size: 100,
        ),
      ),
    );
  }
}
