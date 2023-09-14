import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
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

  Base();

  Future<Map<String, dynamic>> apiSave() async {
    Request request = Request();
    request.id = id;
    request.extension = extension;
    request.model = modelName;
    request.params = params;
    Handler handler = Handler();
    http.Response response = await handler.patch(request, "Data/Save");
    return json.decode(response.body)["SaveInfo"][0];
  }

  Future<Map<String, dynamic>> apiRetrieve() async {
    Request request = Request();
    request.id = id;
    request.extension = extension;
    request.model = modelName;
    Handler handler = Handler();
    http.Response response = await handler.post(request, "Data/Retrieve");
    return json.decode(response.body)["RetrieveInfo"][0];
  }

  Future<Map<String, dynamic>> apiDelete() async {
    Request request = Request();
    request.id = id;
    request.extension = extension;
    request.model = modelName;
    Handler handler = Handler();
    http.Response response = await handler.delete(request, "Data/Delete");
    return json.decode(response.body)["DeletedInfo"][0];
  }

  Future<Map<String, dynamic>> apiList() async {
    Request request = Request();
    request.id = id;
    request.extension = extension;
    request.model = modelName;
    Handler handler = Handler();
    http.Response response = await handler.delete(request, "Data/Delete");
    return json.decode(response.body)["DeletedInfo"][0];
  }

  DateTime dateConvertor(String dateUtc) {
    try {
      var dateTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateUtc, true);
      return dateTime.toLocal();
    } catch (e) {
      return DateTime.now();
    }
  }
}
