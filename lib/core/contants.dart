import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';

class Constants {
  static const String myTitle = "Arzon";
  static const String evnName = "assets/.env";
  static const String myFirstAsset = "assets/first.png";
  static const String mySecondAsset = "assets/second.png";
}

final dotEnv = dotenv.load(fileName: Constants.evnName);

final fireBaseInit = Firebase.initializeApp(
    options: FirebaseOptions(
  apiKey: dotenv.env['api_key']!,
  appId: dotenv.env['api_Id']!,
  messagingSenderId: dotenv.env['messagingSenderId']!,
  projectId: dotenv.env['projectId']!,
  storageBucket: dotenv.env['storageBucket']!,
));
