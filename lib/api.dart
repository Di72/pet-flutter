import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Future api({
  String method = 'get',
  Object? body,
  String apiPath = 'https://api.openweathermap.org/data/2.5/weather?',
  String token = 'f9475157abe948c624c563085f0f26bf',
  String url = '',
  String params = '',
  Map<String, String>? headers,
}) async {
  var uri = Uri.parse(apiPath + "appid=${token}" + url + params);
  var response;
  try {
    switch (method) {
      case 'get':
        {
          response = await http.get(uri, headers: headers);
          var decodedResponse =
              jsonDecode(utf8.decode(response.bodyBytes)) as dynamic;
          print(decodedResponse);
          return decodedResponse;
        }
      case "post":
        {
          response = await http.post(uri, headers: headers, body: body);
          return response.statusCode;
        }
      case "put":
        {
          response = await http.put(uri, headers: headers);
          return response.statusCode;
        }
      case "delete":
        {
          response = await http.delete(uri, headers: headers, body: body);
          return response.statusCode;
        }
      default:
        {
          return print("Error method");
        }
    }
  } catch (err) {
    print('Caught error: $err');
  }
}
