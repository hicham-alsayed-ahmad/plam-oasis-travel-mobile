// ignore_for_file: camel_case_types

class Countries_Home {
  bool? success;
  String? message;
  List<Data>? data;
  int? total;
  int? status;

  Countries_Home(
      {this.success, this.message, this.data, this.total, this.status});

  Countries_Home.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = <String, dynamic>{};
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
  String? name;
  String? symbol;
  String? startPrice;
  String? image;

  Data({this.id, this.name, this.symbol, this.startPrice, this.image});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    startPrice = json['start_price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['symbol'] = symbol;
    data['start_price'] = startPrice;
    data['image'] = image;
    return data;
  }
}
