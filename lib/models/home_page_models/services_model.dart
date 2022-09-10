// ignore_for_file: prefer_collection_literals

class Services {
  bool? success;
  String? message;
  List<Data>? data;
  int? total;
  int? status;

  Services({this.success, this.message, this.data, this.total, this.status});

  Services.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    total = json['total'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['success'] = success;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['total'] = total;
    data['status'] = status;
    return data;
  }
}

class Data {
  int? id;
  String? icon;
  String? title;
  String? text;

  Data({this.id, this.icon, this.title, this.text});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    icon = json['icon'];
    title = json['title'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['icon'] = icon;
    data['title'] = title;
    data['text'] = text;
    return data;
  }
}
