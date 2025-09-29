import 'package:flutter/material.dart';

class SplashController extends ChangeNotifier {
  Future<void> init(BuildContext context) async {
    Future.delayed(const Duration(seconds: 2), () async {});
  }
}
