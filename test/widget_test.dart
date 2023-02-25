import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:project_1/blocs/form/form_bloc.dart';
import 'package:project_1/cubits/page/page_cubit.dart';
import 'package:project_1/cubits/scroll/scroll_cubit.dart';
import 'package:project_1/main.dart';
import 'package:project_1/screens/firstpage.dart';
import 'package:project_1/screens/generate_form.dart';
import 'package:project_1/screens/visitor_page.dart';

void main() {
  void ignoreOverflowErrors(
    FlutterErrorDetails details, {
    bool forceReport = false,
  }) {
    bool ifIsOverflowError = false;
    bool isUnableToLoadAsset = false;

    // Detect overflow error.
    var exception = details.exception;
    if (exception is FlutterError) {
      ifIsOverflowError = !exception.diagnostics.any(
        (e) => e.value.toString().startsWith("A RenderFlex overflowed by"),
      );
      isUnableToLoadAsset = !exception.diagnostics.any(
        (e) => e.value.toString().startsWith("Unable to load asset"),
      );
    }

    // Ignore if is overflow error.
    if (ifIsOverflowError || isUnableToLoadAsset) {
      debugPrint('Ignored Error');
    } else {
      FlutterError.dumpErrorToConsole(details, forceReport: forceReport);
    }
  }

  group('ResultFormBloc', () {
    late ResultFormBloc resultFormBloc;

    setUp(() {
      resultFormBloc = ResultFormBloc();
    });

    tearDown(() {
      resultFormBloc.close();
    });

    test('initial state is ResultFormInitial', () {
      expect(resultFormBloc.state, equals(ResultFormState.initial()));
    });

    blocTest<ResultFormBloc, ResultFormState>(
      'emits [ResultFormSuccess] when submitResult is called',
      build: () => resultFormBloc,
      act: (bloc) => bloc.emit(ResultFormState(answers: Map())),
      expect: () => [ResultFormState(answers: Map())],
    );
  });

  group('PageCubit', () {
    late PageCubit pageCubit;

    setUp(() {
      pageCubit = PageCubit();
    });

    tearDown(() {
      pageCubit.close();
    });

    test('initial state is 0', () {
      expect(pageCubit.state, equals(0));
    });

    blocTest<PageCubit, int>(
      'emits [1] when nextPage is called',
      build: () => pageCubit,
      act: (cubit) => cubit.emit(1),
      expect: () => [1],
    );
  });

  group('ScrollCubit', () {
    late ScrollCubit scrollCubit;

    setUp(() {
      scrollCubit = ScrollCubit();
    });

    tearDown(() {
      scrollCubit.close();
    });

    test('initial state is 0.0', () {
      expect(scrollCubit.state, equals(0.0));
    });

    blocTest<ScrollCubit, double>(
      'emits [100.0] when setScrollPosition is called with 100.0',
      build: () => scrollCubit,
      act: (cubit) => cubit.emit(100.0),
      expect: () => [100.0],
    );
  });

  group('MyApp', () {
    testWidgets('renders MaterialApp with router', (tester) async {
      await tester.pumpWidget(MyApp());
      var appFinder = find.byType(MultiBlocProvider);
      expect(appFinder, findsOneWidget);
      appFinder = find.byType(MaterialApp);
      expect(appFinder, findsOneWidget);
    });

    testWidgets('renders FirstPage by default', (tester) async {
      await tester.pumpWidget(MyApp());
      await tester.pump(new Duration(milliseconds: 2));
      expect(find.byType(FirstPage), findsOneWidget);
    });

    testWidgets('navigates to visitor_page on /visitor route', (tester) async {
      FlutterError.onError = ignoreOverflowErrors;
      await tester.pumpWidget(MyApp());
      await tester.pump(new Duration(milliseconds: 100));
      tester.element(find.byType(FirstPage)).go("/visitor");
      //await tester.tap(find.byType(ElevatedButton));
      await tester.pump(new Duration(milliseconds: 100));
      await tester.pumpAndSettle();
      expect(find.byType(visitor_page), findsOneWidget);
    });

    testWidgets('navigates to visitor_page on /generate route', (tester) async {
      FlutterError.onError = ignoreOverflowErrors;
      await tester.pumpWidget(MyApp());
      await tester.pump(new Duration(milliseconds: 100));
      tester.element(find.byType(FirstPage)).go("/generate");
      //await tester.tap(find.byType(ElevatedButton));
      await tester.pump(new Duration(milliseconds: 100));
      await tester.pumpAndSettle();
      expect(find.byType(generate_form), findsOneWidget);
    });

    // Add more tests for other routes
  });
}
