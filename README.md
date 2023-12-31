<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A flutter package to add indicator above the carousels in Stacks widgets.

## Features

You can change color of active indicator and inactive indicators.

## Getting started

Add the dependency in the pubspec.yaml

## ScreenShots

![Screen shot of carousel indicator](https://raw.githubusercontent.com/m8811163008/carousel_indicator_simple/main/flutter_01.png)

## Usage
Pass the `itemsCount` and `activeIndex` to CarouselIndicatorSimple widget.

```dart
      MaterialApp(
        home: Scaffold(
          body: CarouselIndicatorSimple(
            itemsCount: 5,
            activeIndex: 2,
          ),
        ),
      ),
```

## Additional information

Any improvments are welcome.
