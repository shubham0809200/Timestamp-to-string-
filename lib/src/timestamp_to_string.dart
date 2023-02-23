import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimestampToString extends StatelessWidget {
  final String? timestamp;
  const TimestampToString({Key? key, this.timestamp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(timestamp!);
  }

  // ddmmyyyy
  factory TimestampToString.ddmmyyyy(String timestamp) {
    ///
    /// DateFormat('dd/MM/yyyy').format(DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));
    ///
    /// result: 01/01/2021
    ///
    String formattedData = DateFormat('dd/MM/yyyy').format(
        DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));

    return TimestampToString(
      timestamp: formattedData,
    );
  }

//yyyymmdd
  factory TimestampToString.yyyymmdd(String timestamp) {
    ///
    /// DateFormat('yyyy/MM/dd').format(DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));
    ///
    /// result: 2021/01/01
    ///
    String formattedData = DateFormat('yyyy/MM/dd').format(
        DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));

    return TimestampToString(
      timestamp: formattedData,
    );
  }

//yyyymmddhhmmss
  factory TimestampToString.yyyymmddhhmmss(String timestamp) {
    ///
    /// String formattedData = DateFormat('yyyy/MM/dd HH:mm:ss').format(DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));
    ///
    /// result: 2021/01/01 00:00:00
    ///
    String formattedData = DateFormat('yyyy/MM/dd HH:mm:ss').format(
        DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));

    return TimestampToString(
      timestamp: formattedData,
    );
  }

  //ddmmyyyyhhmmss
  factory TimestampToString.ddmmyyyyhhmmss(String timestamp) {
    ///
    /// DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));
    ///
    /// result: 01/01/2021 00:00:00
    ///
    String formattedData = DateFormat('dd/MM/yyyy HH:mm:ss').format(
        DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));

    return TimestampToString(
      timestamp: formattedData,
    );
  }

  //dddmmmddyyyy
  factory TimestampToString.dddmmmddyyyy(String timestamp) {
    ///
    /// DateFormat('EEE MMM dd yyyy').format(DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));
    ///
    /// result: Wed Jan 01 2021
    ///
    String formattedData = DateFormat('EEE MMM dd yyyy').format(
        DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));

    return TimestampToString(
      timestamp: formattedData,
    );
  }

  // no formater
  factory TimestampToString.noFormater(String timestamp) {
    ///
    /// DateFormat().format(DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));
    ///
    /// result: February 24, 2021 7:16:40 AM
    ///
    String formattedData = DateFormat().format(
        DateTime.fromMillisecondsSinceEpoch((int.parse(timestamp) * 1000)));

    return TimestampToString(
      timestamp: formattedData,
    );
  }

  // now
  factory TimestampToString.now() {
    ///
    /// DateFormat().format(DateTime.now());
    ///
    /// result: February 24, 2021 7:16:40 AM
    ///

    String formattedData = DateFormat().format(DateTime.now());

    return TimestampToString(
      timestamp: formattedData,
    );
  }
}
