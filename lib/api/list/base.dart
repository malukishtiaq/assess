import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

import '../handler.dart';
import 'request.dart';

class Base {
  int id = 0;
  DateTime changedOn = DateTime.now();
  bool isDeleted = false;
  int changedBy = 0;
  String modelName = "";
  String extension = "";
  Object params = ();
  int page = 0;
  int pageSize = 0;
  String searchString = "";
  String orderBy = "";
  String orderByDir = "";

  Base();
  Future<dynamic> apiList() async {
    Request request = Request();
    request.id = id;
    request.extension = extension;
    request.model = modelName;
    request.params = params;
    Handler handler = Handler(appName: "DbTanach");
    http.Response response = await handler.post(request, "Data/List");
    return json.decode(response.body)["ListInfo"];
  }
}
