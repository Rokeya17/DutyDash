import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';

class Networkcaller {
  Future<void> getRequest(String url) async {
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      final Map<String, dynamic> decodedResponse = jsonDecode(response.body);
      return decodedResponse;
    } else {}
  }
}
