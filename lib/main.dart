import 'package:flutter/material.dart';

import '../../core/contants.dart';
import './ui/theme/theme.dart';
import 'package:Arzon/features/splash/splash_screen.dart';
import 'features/tab/tab_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotEnv;
  await fireBaseInit;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.myTitle,
      theme: theme,
      home: SplashScreen(),
      routes: {
        TabScreen.routeName: (ctx) => TabScreen(),
      },
    );
  }
}
