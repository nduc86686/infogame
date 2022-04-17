import 'package:flutter/material.dart';
import 'package:infogame/ui/home_layout.dart';
import 'package:infogame/ui/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/app_bloc_observer.dart';
void main() {
  BlocOverrides.runZoned(
        () => runApp(const MyApp()),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Demo',
      home: HomePage(),
    );
  }
}

