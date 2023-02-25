// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_1/blocs/filler/filler_bloc.dart';
import 'package:project_1/blocs/form/form_bloc.dart';
import 'package:project_1/cubits/page/page_cubit.dart';
import 'package:project_1/cubits/scroll/scroll_cubit.dart';
import 'package:project_1/screens/CSSDA_page.dart';
import 'package:project_1/screens/CS_page.dart';
import 'package:project_1/screens/DOMP_page.dart';
import 'package:project_1/screens/MROV_page.dart';
import 'package:project_1/screens/PH_page.dart';
import 'package:project_1/screens/SAPOM_page.dart';
import 'package:project_1/screens/TE_page.dart';
import 'package:project_1/screens/fillout_page.dart';
import 'package:project_1/screens/firstpage.dart';
import 'package:project_1/screens/generate_form.dart';
import 'package:project_1/screens/rating_finish.dart';
import 'package:project_1/screens/visitor_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => ResultFormBloc()),
        BlocProvider(create: (BuildContext context) => FillerBloc()),
        BlocProvider(create: (BuildContext context) => PageCubit()),
        BlocProvider(create: (BuildContext context) => ScrollCubit())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
        builder: (context, child) => ResponsiveWrapper.builder(child,
            maxWidth: 1280,
            minWidth: 411,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(411, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ]),
      ),
    );
  }

  final GoRouter _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => FirstPage(),
    ),
    GoRoute(
      path: "/visitor",
      builder: (context, state) => visitor_page(),
    ),
    GoRoute(
      path: "/fillout",
      builder: (context, state) => fillout_page(),
    ),
    GoRoute(path: "/PH", builder: (context, state) => PH_page()),
    GoRoute(path: "/TE", builder: (context, state) => TE_Page()),
    GoRoute(path: "/DOMP", builder: (context, state) => DOMP_page()),
    GoRoute(path: "/SAPOM", builder: (context, state) => SAPOM_Page()),
    GoRoute(path: "/CSSDA", builder: (context, state) => CSSDA_page()),
    GoRoute(path: "/CS", builder: (context, state) => CS_page()),
    GoRoute(path: "/MROV", builder: (context, state) => MROV_page()),
    GoRoute(path: "/rating", builder: (context, state) => rating_finish()),
    GoRoute(path: "/generate", builder: (context, state) => generate_form()),
  ]);
}
