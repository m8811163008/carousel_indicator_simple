import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:carousel_indicator_simple/carousel_indicator_simple.dart';

void main() {
  testWidgets('CarouselIndicatorSimple should build correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CarouselIndicatorSimple(
            itemsCount: 5,
            activeIndex: 2,
          ),
        ),
      ),
    );

    expect(find.byType(CirclePin), findsNWidgets(4));
    expect(find.byType(ActiveIndicator), findsOneWidget);
  });

  testWidgets(
      'CarouselIndicatorSimple should have correct number of indicators',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CarouselIndicatorSimple(
            itemsCount: 7,
            activeIndex: 3,
          ),
        ),
      ),
    );

    expect(find.byType(CirclePin), findsNWidgets(6));
    expect(find.byType(ActiveIndicator), findsOneWidget);
  });

  testWidgets(
      'CarouselIndicatorSimple should have correct active indicator color',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CarouselIndicatorSimple(
            itemsCount: 3,
            activeIndex: 1,
            activeIndicatorColor: Colors.red,
          ),
        ),
      ),
    );

    final activeIndicator =
        tester.widget<ActiveIndicator>(find.byType(ActiveIndicator));
    expect(activeIndicator.color, Colors.red);
  });

  testWidgets(
      'CarouselIndicatorSimple should have correct inactive indicator color',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CarouselIndicatorSimple(
            itemsCount: 4,
            activeIndex: 0,
            inactiveIndicatorColor: Colors.grey,
          ),
        ),
      ),
    );

    final circlePins = tester.widgetList<CirclePin>(find.byType(CirclePin));
    for (final circlePin in circlePins) {
      expect(circlePin.color, Colors.grey);
    }
  });
}
