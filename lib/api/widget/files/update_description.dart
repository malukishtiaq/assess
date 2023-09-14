// To parse this JSON data, do
//
//     final updateDescriptionModel = updateDescriptionModelFromJson(jsonString);

import 'dart:convert';

import '../../handler.dart';
import '../base.dart';

String updateDescriptionModelToJson(UpdateDescriptionModel data) =>
    json.encode(data.toJson());

class UpdateDescriptionModel extends Base {
  int? id = 0;
  String? description = "";

  UpdateDescriptionModel() {
    super.params = this;
  }

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Description": description,
      };

  Future<dynamic> updateDescription() async {
    Handler handler = Handler(appName: "_appName", baseURL: "_baseURL");
    var response = await handler.post(params, "_updateDescription");
    return json.decode(response.body)["FileInfo"];
  }
}
