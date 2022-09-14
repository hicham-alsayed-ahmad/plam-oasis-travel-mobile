// ignore_for_file: unnecessary_new, prefer_collection_literals

class Partners {
  bool? success;
  String? message;
  List<Data>? data;
  int? total;
  int? status;

  Partners({this.success, this.message, this.data, this.total, this.status});

  Partners.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    total = json['total'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
  String? image;
  String? name;

  Data({this.id, this.image, this.name});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}
