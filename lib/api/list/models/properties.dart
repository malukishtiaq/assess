import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../base.dart';
import 'list_info.dart';

class Properties extends Base {
  int chaptersId = 0;

  Properties(int id, {String extention = ""}) : super() {
    super.modelName = "TanachVerses";
    super.extension = "";
    super.id = id;
    super.page = 1;
    super.pageSize = 20;
    super.orderBy = "Id";
    super.orderByDir = "ASC";
    super.searchString = "";
    super.params = this;
  }

  Future<void> list() async {
    params = await super.apiList();
    if (kDebugMode) {
      print("");
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'ChaptersId': chaptersId,
      "page": 1,
      "pageSize": 20,
      "orderBy": "Id",
      "orderByDir": "ASC",
      "searchString": "",
    };
  }
}
