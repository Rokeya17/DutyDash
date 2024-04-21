import 'package:http/http.dart';

class NetworkCaller {
  Future<void> getRequest(String url) async {
    Response response = await get(Uri.parse(url));
  }
}
