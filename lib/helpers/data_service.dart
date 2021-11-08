import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

// Interface for queries with different methods and decod

Future api({
  String method = 'get',
  Object? body,
  String apiPath = 'api.openweathermap.org',
  String unencodedPath = "/data/2.5/weather",
  Map<String, dynamic>? queryParameters,
  Map<String, String>? headers,
}) async {
  final uri = Uri.https(apiPath, unencodedPath, queryParameters);
  final http.Response response;
  try {
    switch (method) {
      case 'get':
        {
          response = await http.get(uri, headers: headers);
          var decodedResponse =
              jsonDecode(utf8.decode(response.bodyBytes)) as dynamic;
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
