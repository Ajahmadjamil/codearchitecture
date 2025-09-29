import 'package:codearchitecture/services/api_service.dart';
import 'package:flutter/foundation.dart';

class SignInRepository {
  final ApiService _apiService = ApiService();
  //
  //   Future<Response?> login(LoginRequest data) async {
  //     if (kDebugMode) {
  //       print('data: ${data.toJson()}');
  //     }
  //
  //     final response = await _apiService.postRequestResponse(ApiEndPoints.login, body: data.toJson(), applyAuth: false);
  //
  //     if (kDebugMode) {
  //       print('res: ${response?.data}');
  //       print('statusCode: ${response?.statusCode}');
  //     }
  //
  //     return response;
  //   }
}
