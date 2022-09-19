// ignore_for_file: camel_case_types

class General_Information {
  bool? success;
  String? message;
  Data? data;
  int? total;
  int? status;

  General_Information(
      {this.success, this.message, this.data, this.total, this.status});

  General_Information.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    total = json['total'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['success'] = success;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['total'] = total;
    data['status'] = status;
    return data;
  }
}

class Data {
  String? siteName;
  String? phone;
  String? email;
  String? facebook;
  String? twitter;
  String? youtube;
  String? instagram;
  String? mainOffice;
  String? whatsapp;
  String? appleStore;
  String? googlePlay;
  int? activeActivity;
  int? activeOutboundIsa;
  int? activeUseVisa;
  String? introTitle;
  String? introValue;
  String? masterCardImg;
  String? visaImg;
  String? iataLogo;
  String? messengerId;
  String? whitLogo;
  String? logo;

  Data(
      {this.siteName,
      this.phone,
      this.email,
      this.facebook,
      this.twitter,
      this.youtube,
      this.instagram,
      this.mainOffice,
      this.whatsapp,
      this.appleStore,
      this.googlePlay,
      this.activeActivity,
      this.activeOutboundIsa,
      this.activeUseVisa,
      this.introTitle,
      this.introValue,
      this.masterCardImg,
      this.visaImg,
      this.iataLogo,
      this.messengerId,
      this.whitLogo,
      this.logo});

  Data.fromJson(Map<String, dynamic> json) {
    siteName = json['site_name'];
    phone = json['phone'];
    email = json['email'];
    facebook = json['facebook'];
    twitter = json['twitter'];
    youtube = json['youtube'];
    instagram = json['instagram'];
    mainOffice = json['main_office'];
    whatsapp = json['whatsapp'];
    appleStore = json['apple_store'];
    googlePlay = json['google_play'];
    activeActivity = json['active_activity'];
    activeOutboundIsa = json['active_outbound_isa'];
    activeUseVisa = json['active_use_visa'];
    introTitle = json['intro_title'];
    introValue = json['intro_value'];
    masterCardImg = json['master_card_img'];
    visaImg = json['visa_img'];
    iataLogo = json['iata_logo'];
    messengerId = json['messenger_id'];
    whitLogo = json['whit_logo'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['site_name'] = siteName;
    data['phone'] = phone;
    data['email'] = email;
    data['facebook'] = facebook;
    data['twitter'] = twitter;
    data['youtube'] = youtube;
    data['instagram'] = instagram;
    data['main_office'] = mainOffice;
    data['whatsapp'] = whatsapp;
    data['apple_store'] = appleStore;
    data['google_play'] = googlePlay;
    data['active_activity'] = activeActivity;
    data['active_outbound_isa'] = activeOutboundIsa;
    data['active_use_visa'] = activeUseVisa;
    data['intro_title'] = introTitle;
    data['intro_value'] = introValue;
    data['master_card_img'] = masterCardImg;
    data['visa_img'] = visaImg;
    data['iata_logo'] = iataLogo;
    data['messenger_id'] = messengerId;
    data['whit_logo'] = whitLogo;
    data['logo'] = logo;
    return data;
  }
}
