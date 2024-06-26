import 'dart:convert';
import 'dart:developer';

import 'package:dutydash/data/models/auth_controller.dart';
import 'package:dutydash/presentation/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../models/response_object.dart';

class Dutydash {
  static GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();
}

class NetworkCaller {
  Future<NetworkResponse> getRequest(String url, {bool isLogin = false}) async {
    try {
      Response response = await get(Uri.parse(url),
          headers: {'token': AuthController.accessToken.toString()});
      log(response.statusCode.toString());
      log(response.body);
      if (response.statusCode == 200) {
        return NetworkResponse(
            true, response.statusCode, jsonDecode(response.body));
      } else if (response.statusCode == 401) {
        if (isLogin) {
          await gotoLogin();
        }
      } else {
        return NetworkResponse(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return NetworkResponse(
      false,
      -1,
      null,
    );
  }

  Future<NetworkResponse> postRequest(String url, Map<String, dynamic> body,
      {bool isLogin = false}) async {
    try {
      Response response = await post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'token': AuthController.accessToken.toString()
        },
        body: jsonEncode(body),
      );
      log(response.statusCode.toString());
      log(response.body);
      if (response.statusCode == 200) {
        return NetworkResponse(
          true,
          response.statusCode,
          jsonDecode(response.body),
        );
      } else if (response.statusCode == 401) {
        if (!isLogin) {
          await gotoLogin();
        }
      } else {
        return NetworkResponse(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return NetworkResponse(false, -1, null);
  }

  Future<void> gotoLogin() async {
    AuthController.clear();
    Navigator.pushAndRemoveUntil(
      Dutydash.globalKey.currentState!.context,
      MaterialPageRoute(builder: (context) => const SignUpScreen()),
      (route) => false,
    );
  }
}
