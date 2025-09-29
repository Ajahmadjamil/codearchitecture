import 'package:codearchitecture/core/constants/app_constants.dart';
import 'package:codearchitecture/features/authentication/signin/repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginController with ChangeNotifier {
  final SignInRepository _repo = SignInRepository();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  bool isLoading = false;

  // Future<void> login(BuildContext context) async {
  //   isLoading = true;
  //   notifyListeners();
  //
  //   final email = emailController.text.trim();
  //   final password = passwordController.text.trim();
  //
  //   if (email.isEmpty || password.isEmpty) {
  //     AppConstants.showToast("Please enter both email and password");
  //     isLoading = false;
  //     if (email.isEmpty) {
  //       emailFocusNode.requestFocus();
  //     } else {
  //       passwordFocusNode.requestFocus();
  //     }
  //     notifyListeners();
  //     return;
  //   }
  //   try {
  //     final loginRequest = LoginRequest(
  //       username: email,
  //       password: password,
  //       deviceId: "sas",
  //       latitude: position.latitude.toString(),
  //       longitude: position.longitude.toString(),
  //     );
  //
  //     Response? response = await _repo.login(loginRequest);
  //
  //     if (response != null && response.statusCode == 200) {
  //       final loginResponse = LoginResponse.fromJson(response.data);
  //
  //       if (loginResponse.data != null && loginResponse.success == true) {
  //       } else {
  //         if (kDebugMode) {
  //           print("Login failed: no data in response");
  //         }
  //       }
  //     } else {
  //       AppConstants.showToast("Login failed");
  //     }
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print("Login error: $e");
  //     }
  //     AppConstants.showToast("Login failed: $e");
  //   } finally {
  //     isLoading = false;
  //     notifyListeners();
  //   }
  // }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
