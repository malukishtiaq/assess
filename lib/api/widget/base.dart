import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

import '../handler.dart';

class Base {
  final _baseURL = "https://api.softsmartinc.com/Services/v2/Widget/";

  final _appName = "DbTanach";
  final _updateDescription = "Files/UpdateDescription";
  final _emailSend = "Email/Send";
  final _upload = "Files/Upload";
  Object params = ();
  Future<dynamic> sendEmailApi() async {}

  Future<dynamic> uploadApi(String localPath) async {
    Handler handler = Handler(appName: _appName, baseURL: _baseURL);
    http.Response response = await handler.upload(
        filepath: localPath, url: _upload, metasId: "", description: "", id: 0);
    return json.decode(response.body)["FileInfo"];
  }
}
