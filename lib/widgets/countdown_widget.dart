// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:wedding_nr/data/constants.dart';
import 'package:wedding_nr/utils/autosize_text_widget.dart';
import 'package:wedding_nr/utils/styles.dart';

class CountdownWidget extends StatefulWidget {
  const CountdownWidget({Key? key}) : super(key: key);

  @override
  State<CountdownWidget> createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  //duration objetc
  late Duration _duration;

  //this can be -1 if wedding is not occurred (countdown timer), +1 if wedding is occurred (normal timer)
  late int _offsetSeconds;

  @override
  void initState() {
    super.initState();
    _initData();
  }

  bool _isWeddingPassed() {
    const weddingDate = Constants.kWeddingDateInMillis;
    return weddingDate < DateTime.now().millisecondsSinceEpoch;
  }

  void _initData() {
    //this is the wedding date in millis
    const weddingDate = Constants.kWeddingDateInMillis;

    //if wedding is passed, the date will increase, if wedding is yet to come... it will decrease
    final date = _isWeddingPassed()
        ? DateTime.now().millisecondsSinceEpoch - weddingDate
        : weddingDate - DateTime.now().millisecondsSinceEpoch;

    //binding the milliseconds to the duration object
    _duration = Duration(milliseconds: date);

    //if wedding is passed, the date will increase(1), if wedding is yet to come... it will decrease(-1)
    _offsetSeconds = _isWeddingPassed() ? 1 : -1;

    //init timer
    Timer.periodic(
      const Duration(seconds: 1),
      (_) => _refreshTime(),
    );
  }

  void _refreshTime() {
    setState(() {
      //increment or decrement the seconds and refresh the duration object!
      final seconds = _duration.inSeconds + _offsetSeconds;
      _duration = Duration(seconds: seconds);
    });
  }

  String _getDayLabel(int days) {
    return days == 1 ? Constants.kDayLabelSingular : Constants.kDayLabelPlural;
  }

  String _getHoursLabel(int days) {
    return days == 1
        ? Constants.kHourLabelSingular
        : Constants.kHourLabelPlural;
  }

  String _getMinutesLabel(int days) {
    return days == 1
        ? Constants.kMinuteLabelSingular
        : Constants.kMinuteLabelPlural;
  }

  String _getSecondsLabel(int days) {
    return days == 1
        ? Constants.kSecondLabelSingular
        : Constants.kSecondLabelPlural;
  }

  //time label with "x days, y hours, z min, w secs"
  String getTimeLabel() {
    //all these conditions are done to handle plurals (a very lazy and horrible, but quick, solution)
    final daysLabel = _getDayLabel(_duration.inDays);
    final hoursLabel = _getHoursLabel(_duration.inHours.remainder(24));
    final minLabel = _getMinutesLabel(_duration.inMinutes.remainder(60));
    final secLabel = _getSecondsLabel(_duration.inSeconds.remainder(60));

    //this prefixLabel will be displayed only if the wedding is passed
    final prefixLabel = _isWeddingPassed() ? Constants.kMarriedFor : '';

    //all the above labels together (still a lazy solution)!
    return '$prefixLabel${_duration.inDays.abs()} $daysLabel, ${_duration.inHours.abs().remainder(24)} '
        '$hoursLabel, ${_duration.inMinutes.abs().remainder(60)} $minLabel '
        'e ${_duration.inSeconds.abs().remainder(60)} $secLabel';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AutoSizeText(
            text: Constants.kWeddingDateLabel,
            textStyle: Styles.labelStyle(),
          ),
          AutoSizeText(
            text: Constants.kWeddingNames,
            textStyle: Styles.labelStyle().copyWith(fontSize: 40),
          ),
          const SizedBox(height: 15),
          AutoSizeText(
            text: getTimeLabel(),
            textStyle: Styles.countdownStyle(),
          ),
          // const FooterButtonsWidget(),
        ],
      ),
    );
  }
}
