class Request {
  String? model = "";
  int? id = 0;
  String? extension = "";
  Object? params = ();

  Request({this.model, this.extension, this.id});

  Request.fromJson(Map<String, dynamic> json)
      : model = json['Model'],
        extension = json['Extension'],
        id = json['Id'],
        params = json['Params'];

  Map<String, dynamic> toJson() {
    return {'Model': model, 'Extension': extension, 'Id': id, 'Params': params};
  }
}
