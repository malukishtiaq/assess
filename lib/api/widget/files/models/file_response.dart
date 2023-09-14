// To parse this JSON data, do
//
//     final fileInfoModel = fileInfoModelFromJson(jsonString);

import 'dart:convert';

FileResponse fileInfoModelFromJson(String str) =>
    FileResponse.fromJson(json.decode(str));

String fileInfoModelToJson(FileResponse data) => json.encode(data.toJson());

class FileResponse {
  int? id;
  bool? isDeleted;
  String? changedOn;
  int? tokensIdChangedBy;
  int? metasId;
  String? originalName;
  String? fileRepo;
  String? folder;
  String? guid;
  String? fileUrl;
  String? description;
  String? mimeType;

  FileResponse({
    this.id,
    this.isDeleted,
    this.changedOn,
    this.tokensIdChangedBy,
    this.metasId,
    this.originalName,
    this.fileRepo,
    this.folder,
    this.guid,
    this.fileUrl,
    this.description,
    this.mimeType,
  });

  factory FileResponse.fromJson(Map<String, dynamic> json) => FileResponse(
        id: json["Id"],
        isDeleted: json["IsDeleted"],
        changedOn: json["ChangedOn"],
        tokensIdChangedBy: json["TokensId_ChangedBy"],
        metasId: json["MetasId"],
        originalName: json["OriginalName"],
        fileRepo: json["FileRepo"],
        folder: json["Folder"],
        guid: json["Guid"],
        fileUrl: json["FileUrl"],
        description: json["Description"],
        mimeType: json["MimeType"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "IsDeleted": isDeleted,
        "ChangedOn": changedOn,
        "TokensId_ChangedBy": tokensIdChangedBy,
        "MetasId": metasId,
        "OriginalName": originalName,
        "FileRepo": fileRepo,
        "Folder": folder,
        "Guid": guid,
        "FileUrl": fileUrl,
        "Description": description,
        "MimeType": mimeType,
      };
}
