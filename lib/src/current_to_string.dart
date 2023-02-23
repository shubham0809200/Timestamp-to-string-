import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrentTimeToString extends StatelessWidget {
  final String? formattedData;
  const CurrentTimeToString({Key? key, this.formattedData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(formattedData!);
  }

  // ddmmyyyy
  factory CurrentTimeToString.ddmmyyyy() {
    ///
    /// DateFormat('dd/MM/yyyy').format(DateTime.now());
    ///
    /// result: 01/01/2021
    ///

    String formattedData = DateFormat('dd/MM/yyyy').format(DateTime.now());

    return CurrentTimeToString(
      formattedData: formattedData,
    );
  }

  //yyyymmdd
  factory CurrentTimeToString.yyyymmdd() {
    ///
    /// DateFormat('yyyy/MM/dd').format(DateTime.now());
    ///
    /// result: 2021/01/01
    ///

    String formattedData = DateFormat('yyyy/MM/dd').format(DateTime.now());

    return CurrentTimeToString(
      formattedData: formattedData,
    );
  }

  //yyyymmddhhmmss
  factory CurrentTimeToString.yyyymmddhhmmss() {
    ///
    /// DateFormat('yyyy/MM/dd HH:mm:ss').format(DateTime.now());
    ///
    /// result: 2021/01/01 00:00:00
    ///

    String formattedData =
        DateFormat('yyyy/MM/dd HH:mm:ss').format(DateTime.now());

    return CurrentTimeToString(
      formattedData: formattedData,
    );
  }

  //ddmmyyyyhhmmss
  factory CurrentTimeToString.ddmmyyyyhhmmss() {
    ///
    /// DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.now());
    ///
    /// result: 01/01/2021 00:00:00
    ///

    String formattedData =
        DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.now());

    return CurrentTimeToString(
      formattedData: formattedData,
    );
  }

  //dddmmmddyyyy
  factory CurrentTimeToString.dddmmmddyyyy() {
    ///
    /// DateFormat('EEE MMM dd yyyy').format(DateTime.now());
    ///
    /// result: Wed Jan 01 2021
    ///

    String formattedData = DateFormat('EEE MMM dd yyyy').format(DateTime.now());

    return CurrentTimeToString(
      formattedData: formattedData,
    );
  }

  // no formater
  factory CurrentTimeToString.noFormater() {
    ///
    /// DateFormat('EEE MMM dd yyyy').format(DateTime.now());
    ///
    /// result: Wed Jan 01 2021
    ///

    String formattedData = DateFormat('EEE MMM dd yyyy').format(DateTime.now());

    return CurrentTimeToString(
      formattedData: formattedData,
    );
  }

  // now
  factory CurrentTimeToString.now() {
    ///
    /// DateFormat().format(DateTime.now());
    ///
    /// result: February 24, 2021 7:16:40 AM
    ///

    String formattedData = DateFormat().format(DateTime.now());

    return CurrentTimeToString(
      formattedData: formattedData,
    );
  }
}
