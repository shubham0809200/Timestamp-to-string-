# Timestamp-to-date Converter

# Timestamp-to-Readable-String-Converter [![Build Status](https://travis-ci.org/robertklep/timestamp-to-readable-string-converter.svg?branch=master)](https://travis-ci.org/robertklep/timestamp-to-readable-string-converter)

## Description

A timestamp to readable string or timestamp to date converter is a function that takes a timestamp as input and returns a human-readable date string in a specific format (such as "DayName, MonthName Date, Year"). This is useful for presenting timestamps in a more user-friendly way, and can be customized to match a variety of date and time formats.

## Screenshots

![Screenshot](https://raw.githubusercontent.com/robertklep/timestamp-to-readable-string-converter/master/screenshot.png)

## Installation

To use this package, add `timestamp_to_string` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Example

```dart
import 'package:flutter/material.dart';
import 'package:timestamp_to_string/timestamp_to_string.dart';


class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}
class _ExampleState extends State<Example> {
    @override
    Widget build(BuildContext context) {
        returnScaffold(
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
```

## Parameters

### TimestampToString

provide a timestamp in seconds in string format

```dart
TimestampToString.dddmmmddyyyy('$timestamp') // Wed, Jan 01, 2019

TimestampToString.yyyymmddhhmmss(timestamp.toString()) // 2019/01/01 12:00:00
```

### Usage formate

| Format          | Description                  |
| --------------- | ---------------------------- |
| .ddmmyyyy       | 01/01/2019                   |
| .yyyymmdd       | 2019/01/01                   |
| .yyyymmddhhmmss | 2019/01/01 12:00:00          |
| .ddmmyyyyhhmmss | 01/01/2019 12:00:00          |
| .dddmmmddyyyy   | Wed, Jan 01, 2019            |
| .noFormater     | February 24, 2021 7:16:40 AM |
| .now            | February 24, 2021 7:16:40 AM |

### Usage

```dart
TimestampToString.now() // February 24, 2021 7:16:40 AM
```

```dart
TimestampToString.ddmmyyyy('$timestamp') // 01/01/2019
```

```dart
TimestampToString.yyyymmdd('$timestamp') // 2019/01/01
```

```dart
TimestampToString.yyyymmddhhmmss('$timestamp') // 2019/01/01 12:00:00
```

```dart
TimestampToString.ddmmyyyyhhmmss('$timestamp') // 01/01/2019 12:00:00
```

```dart
TimestampToString.dddmmmddyyyy('$timestamp') // Wed, Jan 01, 2019
```

```dart
TimestampToString.noFormater('$timestamp') // February 24, 2021 7:16:40 AM
```

### CurrentTimeToString

```dart
CurrentTimeToString.now() // February 24, 2021 7:16:40 AM
```

### Usage formate

| Format          | Description                  |
| --------------- | ---------------------------- |
| .ddmmyyyy       | 01/01/2019                   |
| .yyyymmdd       | 2019/01/01                   |
| .yyyymmddhhmmss | 2019/01/01 12:00:00          |
| .ddmmyyyyhhmmss | 01/01/2019 12:00:00          |
| .dddmmmddyyyy   | Wed, Jan 01, 2019            |
| .noFormater     | February 24, 2021 7:16:40 AM |
| .now            | February 24, 2021 7:16:40 AM |

### Usage

```dart
CurrentTimeToString.ddmmyyyy() // 01/01/2019
```

```dart
CurrentTimeToString.yyyymmdd() // 2019/01/01
```

```dart
CurrentTimeToString.yyyymmddhhmmss() // 2019/01/01 12:00:00
```

```dart
CurrentTimeToString.ddmmyyyyhhmmss() // 01/01/2019 12:00:00
```

```dart
CurrentTimeToString.dddmmmddyyyy() // Wed, Jan 01, 2019
```

```dart
CurrentTimeToString.noFormater() // February 24, 2021 7:16:40 AM
```

```dart
CurrentTimeToString.now() // February 24, 2021 7:16:40 AM
```

## Github Repository

## Author

Shubham Kumar - [Github](https://github.com/shubham0809200)

## Also See

| Package                                                             | Description                                           |
| ------------------------------------------------------------------- | ----------------------------------------------------- |
| [Single Text Field](https://pub.dev/packages/single_text_field)     | A Flutter package for creating a single text field.   |
| [Drop Down List Menu](https://pub.dev/packages/drop_down_list_menu) | A Flutter package for creating a drop down list menu. |
| [dad Jokes](https://pub.dev/packages/dad_joke)                      | A Flutter package for getting dad jokes.              |