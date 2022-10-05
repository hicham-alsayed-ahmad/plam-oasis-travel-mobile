class Caountries_Details {
  bool? success;
  String? message;
  Data? data;
  int? total;
  int? status;

  Caountries_Details(
      {this.success, this.message, this.data, this.total, this.status});

  Caountries_Details.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    total = json['total'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['total'] = this.total;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? capital;
  String? currency;
  String? convertCurrency;
  String? officialLang;
  String? visaInfo;
  String? intro;
  String? symbol;
  String? startPrice;
  String? countryOrder;
  String? image;
  String? flag;
  String? headerImage;

  Data(
      {this.id,
      this.name,
      this.capital,
      this.currency,
      this.convertCurrency,
      this.officialLang,
      this.visaInfo,
      this.intro,
      this.symbol,
      this.startPrice,
      this.countryOrder,
      this.image,
      this.flag,
      this.headerImage});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    capital = json['capital'];
    currency = json['currency'];
    convertCurrency = json['convert_currency'];
    officialLang = json['official_lang'];
    visaInfo = json['visa_info'];
    intro = json['intro'];
    symbol = json['symbol'];
    startPrice = json['start_price'];
    countryOrder = json['country_order'];
    image = json['image'];
    flag = json['flag'];
    headerImage = json['header_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['capital'] = this.capital;
    data['currency'] = this.currency;
    data['convert_currency'] = this.convertCurrency;
    data['official_lang'] = this.officialLang;
    data['visa_info'] = this.visaInfo;
    data['intro'] = this.intro;
    data['symbol'] = this.symbol;
    data['start_price'] = this.startPrice;
    data['country_order'] = this.countryOrder;
    data['image'] = this.image;
    data['flag'] = this.flag;
    data['header_image'] = this.headerImage;
    return data;
  }
}
