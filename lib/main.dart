import 'package:Arzon/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';

import '../screens/tab_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: 'assets/.env');
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: dotenv.env['api_key']!,
    appId: dotenv.env['api_Id']!,
    messagingSenderId: dotenv.env['messagingSenderId']!,
    projectId: dotenv.env['projectId']!,
    storageBucket: dotenv.env['storageBucket']!,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arzon',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      routes: {
        TabScreen.routeName: (ctx) => TabScreen(),
      },
    );
  }
}
