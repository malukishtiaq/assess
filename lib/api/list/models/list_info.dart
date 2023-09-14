// To parse this JSON data, do
//
//     final listModel = listModelFromJson(jsonString);

import 'dart:convert';

List<ListModel> listModelFromJson(str) => List<ListModel>.from((str).map((x) {
      return ListModel.fromJson(x);
    }));

String listModelToJson(List<ListModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListModel {
  int? recordCount;
  int? id;
  int? chapterNo;
  int? verseNo;
  String? verseEnglish;
  String? verseHebrew;

  ListModel({
    this.recordCount,
    this.id,
    this.chapterNo,
    this.verseNo,
    this.verseEnglish,
    this.verseHebrew,
  });

  factory ListModel.fromJson(Map<String, dynamic> json) => ListModel(
        recordCount: json["RecordCount"],
        id: json["Id"],
        chapterNo: json["ChapterNo"],
        verseNo: json["VerseNo"],
        verseEnglish: json["VerseEnglish"],
        verseHebrew: json["VerseHebrew"],
      );

  Map<String, dynamic> toJson() => {
        "RecordCount": recordCount,
        "Id": id,
        "ChapterNo": chapterNo,
        "VerseNo": verseNo,
        "VerseEnglish": verseEnglish,
        "VerseHebrew": verseHebrew,
      };
}
