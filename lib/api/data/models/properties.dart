import '../base.dart';

class Properties extends Base {
  String name = "";
  String value = "";
  String groupName = "";

  Properties(int id, {String extention = ""}) : super() {
    super.modelName = "Properties";
    super.extension = extention;
    super.id = id;

    load();
    super.params = this;
  }

  Map<String, dynamic> toJson() {
    return {'Name': name, 'Value': value, 'GroupName': groupName};
  }

  Future<void> save() async {
    Map<String, dynamic> json = await super.apiSave();
    super.id = json['Id'];
    super.changedBy = json['TokensId_ChangedBy'];
    super.changedOn = dateConvertor(json['ChangedOn']);
    super.isDeleted = json['IsDeleted'];

    name = json['Name'];
    value = json['Value'];
    groupName = json['GroupName'];
  }

  Future<void> load() async {
    Map<String, dynamic> json = await super.apiRetrieve();
    super.id = json['Id'];
    super.changedBy = json['TokensId_ChangedBy'];
    super.changedOn = dateConvertor(json['ChangedOn']);
    super.isDeleted = json['IsDeleted'];

    name = json['Name'];
    value = json['Value'];
    groupName = json['GroupName'];
  }

  Future<void> delete() async {
    Map<String, dynamic> json = await super.apiDelete();
  }
}
