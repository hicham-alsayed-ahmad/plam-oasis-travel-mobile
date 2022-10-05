// ignore_for_file: camel_case_types

class Packages_Countries {
  List<Data>? data;
  Links? links;
  Meta? meta;
  bool? success;
  String? message;
  int? status;

  Packages_Countries(
      {this.data,
      this.links,
      this.meta,
      this.success,
      this.message,
      this.status});

  Packages_Countries.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    success = json['success'];
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    data['success'] = this.success;
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? symbol;
  String? image;
  List<Labels>? labels;
  int? flight;
  int? hotels;
  int? transfer;
  int? activity;
  List<PackageHotels>? packageHotels;

  Data(
      {this.id,
      this.name,
      this.symbol,
      this.image,
      this.labels,
      this.flight,
      this.hotels,
      this.transfer,
      this.activity,
      this.packageHotels});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    image = json['image'];
    if (json['labels'] != null) {
      labels = <Labels>[];
      json['labels'].forEach((v) {
        labels!.add(new Labels.fromJson(v));
      });
    }
    flight = json['flight'];
    hotels = json['hotels'];
    transfer = json['transfer'];
    activity = json['activity'];
    if (json['package_hotels'] != null) {
      packageHotels = <PackageHotels>[];
      json['package_hotels'].forEach((v) {
        packageHotels!.add(new PackageHotels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['image'] = this.image;
    if (this.labels != null) {
      data['labels'] = this.labels!.map((v) => v.toJson()).toList();
    }
    data['flight'] = this.flight;
    data['hotels'] = this.hotels;
    data['transfer'] = this.transfer;
    data['activity'] = this.activity;
    if (this.packageHotels != null) {
      data['package_hotels'] =
          this.packageHotels!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Labels {
  String? value;
  String? color;

  Labels({this.value, this.color});

  Labels.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['color'] = this.color;
    return data;
  }
}

class PackageHotels {
  int? id;
  int? soldOut;
  int? starRate;
  String? price;
  int? hotelId;

  PackageHotels(
      {this.id, this.soldOut, this.starRate, this.price, this.hotelId});

  PackageHotels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    soldOut = json['sold_out'];
    starRate = json['star_rate'];
    price = json['price'];
    hotelId = json['hotel_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sold_out'] = this.soldOut;
    data['star_rate'] = this.starRate;
    data['price'] = this.price;
    data['hotel_id'] = this.hotelId;
    return data;
  }
}

class Links {
  String? first;
  String? last;
  Null? prev;
  Null? next;

  Links({this.first, this.last, this.prev, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['last'] = this.last;
    data['prev'] = this.prev;
    data['next'] = this.next;
    return data;
  }
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta(
      {this.currentPage,
      this.from,
      this.lastPage,
      this.path,
      this.perPage,
      this.to,
      this.total});

  Meta.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}
