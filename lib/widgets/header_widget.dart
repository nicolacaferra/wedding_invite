import 'package:flutter/cupertino.dart';
import 'package:wedding_nr/model/data.dart';
import 'package:wedding_nr/utils/autosize_text_widget.dart';
import 'package:wedding_nr/utils/styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AutoSizeText(
        text: Data.kWeddingHeaderLabel,
        textStyle: Styles.labelStyle(),
        size: 100,
      ),
    );
  }
}
