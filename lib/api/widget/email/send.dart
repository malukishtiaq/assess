// To parse this JSON data, do
//
//     final emailModel = emailModelFromJson(jsonString);

import 'dart:convert';

import '../../handler.dart';
import '../base.dart';

String emailModelToJson(EmailSend data) => json.encode(data.toJson());

class EmailSend extends Base {
  String? subject = "";
  String? email = "";
  String? emailTo = "";
  String? body = "";
  List<dynamic>? attachments = [];

  EmailSend() {
    super.params = this;
  }

  Map<String, dynamic> toJson() => {
        "Subject": subject,
        "Email": email,
        "EmailTo": emailTo,
        "Body": body,
        "Attachments": attachments == null
            ? []
            : List<dynamic>.from(attachments!.map((x) => x)),
      };

  Future<dynamic> execute() async {
    Handler handler = Handler(appName: "_appName", baseURL: "_baseURL");
    var response = await handler.post(params, "_emailSend");
    return json.decode(response.body)["Message"];
  }
}
