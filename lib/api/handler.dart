import 'dart:async';
import 'dart:convert';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;

class Handler {
  static String _baseURL = "https://api.softsmartinc.com/Services/v2/";
  static String _appName = "DbAdmin";
  static String _token = "14FE34B2-9547-43F5-A57C-F0DC7DE81AA9";
  final String _filesUpload = "Files/Upload";

  static Map<String, String> _header = {};
  Handler(
      {String? baseURL,
      String? appName,
      String? token,
      Map<String, String>? header}) {
    _appName = appName ?? _appName;
    _token = token ?? _token;
    _header = header ?? _header;
    _baseURL = baseURL ?? _baseURL;

    getHttpHeader();
  }

  getHttpHeader() {
    _header = <String, String>{
      "Authorization": "Bearer $_token",
      "Content-type": 'application/json',
      'Accept': 'application/json',
      "AppName": _appName,
    };
  }

  Future<http.Response> patch(Object request, String url) async {
    final response = await http.patch(Uri.parse(_baseURL + url),
        body: jsonEncode(request), headers: _header);
    return response;
  }

  Future<http.Response> post(Object request, String url) async {
    final response = await http.post(Uri.parse(_baseURL + url),
        body: jsonEncode(request), headers: _header);
    return response;
  }

  Future<http.Response> delete(Object request, String url) async {
    http.Response response;
    response = await http.delete(Uri.parse(_baseURL + url),
        body: jsonEncode(request), headers: _header);
    return response;
  }

  Future<dynamic> upload(
      {String filepath = "",
      String url = "",
      int id = 0,
      String metasId = "",
      String description = ""}) async {
    var multipartRequest =
        http.MultipartRequest('post', Uri.parse(_baseURL + url));
    multipartRequest.headers.addAll(
      {
        "Authorization": "Bearer $_token",
        "Content-Type": "multipart/form-data",
        "AppName": _appName,
      },
    );
    multipartRequest.fields['Id'] = id.toString();
    multipartRequest.fields['MetasId'] = metasId;
    multipartRequest.fields['Description'] = description;
    multipartRequest.files.add(
      await http.MultipartFile.fromPath(
        "File",
        filepath,
        filename:
            "${DateTime.now().millisecondsSinceEpoch}.${filepath.split(".").last}",
        contentType: MediaType('image', 'jpeg'),
      ),
    );

    http.Response response =
        await http.Response.fromStream(await multipartRequest.send());
  }
}
