// ignore_for_file: camel_case_types

class Countries_packages_details {
  bool? success;
  String? message;
  Data? data;
  int? total;
  int? status;

  Countries_packages_details(
      {this.success, this.message, this.data, this.total, this.status});

  Countries_packages_details.fromJson(Map<String, dynamic> json) {
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
  String? symbol;
  String? name;
  String? pdf;
  String? packageImageHeader;
  String? map;
  String? video;
  String? overview;
  int? openInclude;
  int? openNotInclude;
  int? openTerm;
  String? termsCondition;
  int? openCancellation;
  String? cancellationPolicy;
  int? openAdditionalInfo;
  String? additionalInfo;
  List<Sliders>? sliders;
  List<Inclusions>? inclusions;
  List<Exclusions>? exclusions;
  List<Days>? days;
  List<Flights>? flights;
  List<Transfers>? transfers;

  Data(
      {this.id,
      this.symbol,
      this.name,
      this.pdf,
      this.packageImageHeader,
      this.map,
      this.video,
      this.overview,
      this.openInclude,
      this.openNotInclude,
      this.openTerm,
      this.termsCondition,
      this.openCancellation,
      this.cancellationPolicy,
      this.openAdditionalInfo,
      this.additionalInfo,
      this.sliders,
      this.inclusions,
      this.exclusions,
      this.days,
      this.flights,
      this.transfers});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbol = json['symbol'];
    name = json['name'];
    pdf = json['pdf'];
    packageImageHeader = json['package_image_header'];
    map = json['map'];
    video = json['video'];
    overview = json['overview'];
    openInclude = json['open_include'];
    openNotInclude = json['open_not_include'];
    openTerm = json['open_term'];
    termsCondition = json['terms_condition'];
    openCancellation = json['open_cancellation'];
    cancellationPolicy = json['cancellation_policy'];
    openAdditionalInfo = json['open_additional_info'];
    additionalInfo = json['additional_info'];
    if (json['sliders'] != null) {
      sliders = <Sliders>[];
      json['sliders'].forEach((v) {
        sliders!.add(new Sliders.fromJson(v));
      });
    }
    if (json['inclusions'] != null) {
      inclusions = <Inclusions>[];
      json['inclusions'].forEach((v) {
        inclusions!.add(new Inclusions.fromJson(v));
      });
    }
    ///////////////////////////////////////////////////////////////////
    if (json['exclusions'] != null) {
      exclusions = <Exclusions>[];
      json['exclusions'].forEach((v) {
        exclusions!.add(new Exclusions.fromJson(v));
      });
    }
    if (json['days'] != null) {
      days = <Days>[];
      json['days'].forEach((v) {
        days!.add(new Days.fromJson(v));
      });
    }
    if (json['flights'] != null) {
      flights = <Flights>[];
      json['flights'].forEach((v) {
        flights!.add(new Flights.fromJson(v));
      });
    }
    if (json['transfers'] != null) {
      transfers = <Transfers>[];
      json['transfers'].forEach((v) {
        transfers!.add(new Transfers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['symbol'] = this.symbol;
    data['name'] = this.name;
    data['pdf'] = this.pdf;
    data['package_image_header'] = this.packageImageHeader;
    data['map'] = this.map;
    data['video'] = this.video;
    data['overview'] = this.overview;
    data['open_include'] = this.openInclude;
    data['open_not_include'] = this.openNotInclude;
    data['open_term'] = this.openTerm;
    data['terms_condition'] = this.termsCondition;
    data['open_cancellation'] = this.openCancellation;
    data['cancellation_policy'] = this.cancellationPolicy;
    data['open_additional_info'] = this.openAdditionalInfo;
    data['additional_info'] = this.additionalInfo;
    if (this.sliders != null) {
      data['sliders'] = this.sliders!.map((v) => v.toJson()).toList();
    }
    if (this.inclusions != null) {
      data['inclusions'] = this.inclusions!.map((v) => v.toJson()).toList();
    }
    if (this.exclusions != null) {
      data['exclusions'] = this.exclusions!.map((v) => v.toJson()).toList();
    }
    if (this.days != null) {
      data['days'] = this.days!.map((v) => v.toJson()).toList();
    }
    if (this.flights != null) {
      data['flights'] = this.flights!.map((v) => v.toJson()).toList();
    }
    if (this.transfers != null) {
      data['transfers'] = this.transfers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sliders {
  String? text;
  String? image;

  Sliders({this.text, this.image});

  Sliders.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['image'] = this.image;
    return data;
  }
}

class Inclusions {
  String? value;

  Inclusions({this.value});

  Inclusions.fromJson(Map<String, dynamic> json) {
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    return data;
  }
}

class Exclusions {
  String? value;

  Exclusions({this.value});

  Exclusions.fromJson(Map<String, dynamic> json) {
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    return data;
  }
}

class Days {
  String? dayTitle;
  int? openDay;
  String? dayDescription;
  List<Tours>? tours;

  Days({this.dayTitle, this.openDay, this.dayDescription, this.tours});

  Days.fromJson(Map<String, dynamic> json) {
    dayTitle = json['day_title'];
    openDay = json['open_day'];
    dayDescription = json['day_description'];
    if (json['tours'] != null) {
      tours = <Tours>[];
      json['tours'].forEach((v) {
        tours!.add(new Tours.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day_title'] = this.dayTitle;
    data['open_day'] = this.openDay;
    data['day_description'] = this.dayDescription;
    if (this.tours != null) {
      data['tours'] = this.tours!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tours {
  String? tourName;
  String? tourDescription;
  String? tourImage;
  String? isCar;
  String? isBus;
  String? priceBus;
  PriceCar? priceCar;

  Tours(
      {this.tourName,
      this.tourDescription,
      this.tourImage,
      this.isCar,
      this.isBus,
      this.priceBus,
      this.priceCar});

  Tours.fromJson(Map<String, dynamic> json) {
    tourName = json['tour_name'];
    tourDescription = json['tour_description'];
    tourImage = json['tour_image'];
    isCar = json['is_car'];
    isBus = json['is_bus'];
    priceBus = json['price_bus'];
    priceCar = json['price_car'] != null
        ? new PriceCar.fromJson(json['price_car'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tour_name'] = this.tourName;
    data['tour_description'] = this.tourDescription;
    data['tour_image'] = this.tourImage;
    data['is_car'] = this.isCar;
    data['is_bus'] = this.isBus;
    data['price_bus'] = this.priceBus;
    if (this.priceCar != null) {
      data['price_car'] = this.priceCar!.toJson();
    }
    return data;
  }
}

class PriceCar {
  String? price1;
  String? price2;
  String? price3;
  String? child02;
  String? child212;
  Null? child12;

  PriceCar(
      {this.price1,
      this.price2,
      this.price3,
      this.child02,
      this.child212,
      this.child12});

  PriceCar.fromJson(Map<String, dynamic> json) {
    price1 = json['price_1'];
    price2 = json['price_2'];
    price3 = json['price_3'];
    child02 = json['child_0_2'];
    child212 = json['child_2_12'];
    child12 = json['child_12'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price_1'] = this.price1;
    data['price_2'] = this.price2;
    data['price_3'] = this.price3;
    data['child_0_2'] = this.child02;
    data['child_2_12'] = this.child212;
    data['child_12'] = this.child12;
    return data;
  }
}

class Flights {
  String? departureFrom;
  String? departureTo;
  Segments? segments;

  Flights({this.departureFrom, this.departureTo, this.segments});

  Flights.fromJson(Map<String, dynamic> json) {
    departureFrom = json['departure_from'];
    departureTo = json['departure_to'];
    segments = json['segments'] != null
        ? new Segments.fromJson(json['segments'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['departure_from'] = this.departureFrom;
    data['departure_to'] = this.departureTo;
    if (this.segments != null) {
      data['segments'] = this.segments!.toJson();
    }
    return data;
  }
}

class Segments {
  String? icon;
  String? flight;
  String? flightNumber;
  String? departureFrom;
  String? departureDate;
  Null? departureTime;
  String? arrivalTo;
  Null? arrivalDate;
  Null? arrivalTime;

  Segments(
      {this.icon,
      this.flight,
      this.flightNumber,
      this.departureFrom,
      this.departureDate,
      this.departureTime,
      this.arrivalTo,
      this.arrivalDate,
      this.arrivalTime});

  Segments.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    flight = json['flight'];
    flightNumber = json['flight_number'];
    departureFrom = json['departure_from'];
    departureDate = json['departure_date'];
    departureTime = json['departure_time'];
    arrivalTo = json['arrival_to'];
    arrivalDate = json['arrival_date'];
    arrivalTime = json['arrival_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['flight'] = this.flight;
    data['flight_number'] = this.flightNumber;
    data['departure_from'] = this.departureFrom;
    data['departure_date'] = this.departureDate;
    data['departure_time'] = this.departureTime;
    data['arrival_to'] = this.arrivalTo;
    data['arrival_date'] = this.arrivalDate;
    data['arrival_time'] = this.arrivalTime;
    return data;
  }
}

class Transfers {
  String? type;
  String? image;
  String? pickupLocation;
  String? dropOffLocation;
  String? date;
  String? time;

  Transfers(
      {this.type,
      this.image,
      this.pickupLocation,
      this.dropOffLocation,
      this.date,
      this.time});

  Transfers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    image = json['image'];
    pickupLocation = json['pickup_location'];
    dropOffLocation = json['drop_off_location'];
    date = json['date'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['image'] = this.image;
    data['pickup_location'] = this.pickupLocation;
    data['drop_off_location'] = this.dropOffLocation;
    data['date'] = this.date;
    data['time'] = this.time;
    return data;
  }
}
