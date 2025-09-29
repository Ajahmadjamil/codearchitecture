import 'dart:async';

import 'package:codearchitecture/features/splash/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'features/splash/controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => SplashController())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coding Architecture',
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const SplashScreen(),
      ),
    );
  }
}
