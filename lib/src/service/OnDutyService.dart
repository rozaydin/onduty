import 'dart:io';
import 'dart:convert';

class OnDuty {
  final String _endpointUrl = "https://jsonplaceholder.typicode.com";
  final String _personnelPath = "/users";
  HttpClient _client;

  HttpClient get httpClient {
    if (_client == null) {
      _client = new HttpClient();
    }

    return _client;
  }

  Future<List<String>> retrieveOnDutyPersonel() async {

    HttpClientRequest httpRequest = await httpClient.getUrl(Uri.parse(_endpointUrl + _personnelPath));
    // add http headers
    httpRequest.headers.add("Authorization", "password");
    HttpClientResponse httpResponse = await httpRequest.close();
    httpResponse.transform(new Utf8Decoder()).transform(new JsonDecoder());
   


   return httpClient
        .getUrl(Uri.parse(_endpointUrl + _personnelPath))
        .then((httpRequest) {
      // initialize request
      httpRequest.headers.add("Authorization", "password");
      return httpRequest.close();
    }).then((httpResponse) {
      // parse response
      return httpResponse.transform(new Utf8Decoder())
          .transform(new JsonDecoder())        


    });
  }
}
