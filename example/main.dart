import 'package:flutter/material.dart';
import 'package:timestamp_to_string/timestamp_to_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timestamp to string',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timestamp to string example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Current time
            Center(child: CurrentTimeToString.now()),

            /// 2019-01-01 12:00:00

            // Specific timestamp, in a specific format
            Center(child: TimestampToString.dddmmmddyyyy('1546300800')),

            /// Wed, Jan 01, 2019
          ],
        ),
      ),
    );
  }
}
