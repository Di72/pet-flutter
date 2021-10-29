import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Future api({
  String method = 'get',
  Object? body,
  String apiPath = 'https://rs-react-schedule.firebaseapp.com/api/',
  String url = '',
  String params = '',
  Map<String, String>? headers,
}) async {
  var uri = Uri.parse(apiPath + url + params);
  var response;
  try {
    if (method == 'get') {
      response = await http.get(uri, headers: headers);
      var decodedResponse =
          jsonDecode(utf8.decode(response.bodyBytes)) as dynamic;
      return decodedResponse['data'];
    }
    if (method == 'post') {
      response = await http.post(uri, headers: headers, body: body);
      return response.statusCode;
    }
    if (method == 'put') {
      response = await http.put(uri, headers: headers);
      return response.statusCode;
    }
    if (method == 'delete') {
      response = await http.delete(uri, headers: headers, body: body);
      return response.statusCode;
    }
  } catch (err) {
    print('Caught error: $err');
  }
}
