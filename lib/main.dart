import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/style.dart';
import 'firebase_options.dart';
import 'package:portfolio_flutter/screens/home.dart';

Future<void> main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Allan Drozd Developer',
      theme: myTheme,
      initialRoute: '/',
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
    );
  }
}

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeName: // '/'
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('Page not found'),
            ),
          ),
        );
    }
  }
}
