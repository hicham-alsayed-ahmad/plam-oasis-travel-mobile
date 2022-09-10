// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals

class Sliders {
  bool? success;
  String? message;
  List<Data>? data;
  int? total;
  int? status;

  Sliders({this.success, this.message, this.data, this.total, this.status});

  Sliders.fromJson(Map<String, dynamic> json) {
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
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  int? id;
  String? image;
  String? link;

  Data({this.id, this.image, this.link});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['link'] = this.link;
    return data;
  }
}
