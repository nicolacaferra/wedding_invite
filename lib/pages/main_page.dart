import 'package:flutter/material.dart';
import 'package:wedding_nr/model/data.dart';
import 'package:wedding_nr/utils/styles.dart';
import 'package:wedding_nr/widgets/body_widget.dart';
import 'package:wedding_nr/widgets/contact_widget.dart';
import 'package:wedding_nr/widgets/footer_buttons_widget.dart';
import 'package:wedding_nr/widgets/footer_widget.dart';
import 'package:wedding_nr/widgets/header_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //device sizes (width&height) always updated
    final deviceSize = MediaQuery.of(context).size;

    final height = deviceSize.height;
    final width = deviceSize.width > Data.kMaxWidth
        ? Data.kMaxWidth.toDouble()
        : deviceSize.width;

    return Scaffold(
      backgroundColor: Styles.surfaceColor,
      body: Center(
        child: SizedBox(
          height: height,
          width: width,
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                    child: Column(children: const [
                  SizedBox(height: 10),
                  HeaderWidget(),
                  BodyWidget(),
                ])),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Expanded(child: FooterWidget()),
                      FooterButtonsWidget(),
                      ContactWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
