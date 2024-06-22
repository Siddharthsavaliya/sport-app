import 'package:sport_app/screens/booking/slot_data.dart';

class ServiceDetailResponse {
  ServiceDetail? serviceDetail;
  Provider? provider;
  List<dynamic>? ratingData;
  List<dynamic>? customerReview;
  List<dynamic>? couponData;
  List<Tax>? taxes;
  List<ServiceDetail>? relatedService;
  List<dynamic>? serviceFaq;
  List<dynamic>? serviceaddon;

  ServiceDetailResponse({
    this.serviceDetail,
    this.provider,
    this.ratingData,
    this.customerReview,
    this.couponData,
    this.taxes,
    this.relatedService,
    this.serviceFaq,
    this.serviceaddon,
  });

  factory ServiceDetailResponse.fromJson(Map<String, dynamic> json) =>
      ServiceDetailResponse(
        serviceDetail: json["service_detail"] == null
            ? null
            : ServiceDetail.fromJson(json["service_detail"]),
        provider: json["provider"] == null
            ? null
            : Provider.fromJson(json["provider"]),
        ratingData: json["rating_data"] == null
            ? []
            : List<dynamic>.from(json["rating_data"]!.map((x) => x)),
        customerReview: json["customer_review"] == null
            ? []
            : List<dynamic>.from(json["customer_review"]!.map((x) => x)),
        couponData: json["coupon_data"] == null
            ? []
            : List<dynamic>.from(json["coupon_data"]!.map((x) => x)),
        taxes: json["taxes"] == null
            ? []
            : List<Tax>.from(json["taxes"]!.map((x) => Tax.fromJson(x))),
        relatedService: json["related_service"] == null
            ? []
            : List<ServiceDetail>.from(
                json["related_service"]!.map((x) => ServiceDetail.fromJson(x))),
        serviceFaq: json["service_faq"] == null
            ? []
            : List<dynamic>.from(json["service_faq"]!.map((x) => x)),
        serviceaddon: json["serviceaddon"] == null
            ? []
            : List<dynamic>.from(json["serviceaddon"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "service_detail": serviceDetail?.toJson(),
        "provider": provider?.toJson(),
        "rating_data": ratingData == null
            ? []
            : List<dynamic>.from(ratingData!.map((x) => x)),
        "customer_review": customerReview == null
            ? []
            : List<dynamic>.from(customerReview!.map((x) => x)),
        "coupon_data": couponData == null
            ? []
            : List<dynamic>.from(couponData!.map((x) => x)),
        "taxes": taxes == null
            ? []
            : List<dynamic>.from(taxes!.map((x) => x.toJson())),
        "related_service": relatedService == null
            ? []
            : List<dynamic>.from(relatedService!.map((x) => x.toJson())),
        "service_faq": serviceFaq == null
            ? []
            : List<dynamic>.from(serviceFaq!.map((x) => x)),
        "serviceaddon": serviceaddon == null
            ? []
            : List<dynamic>.from(serviceaddon!.map((x) => x)),
      };
}

class Provider {
  int? id;
  String? firstName;
  String? lastName;
  String? username;
  dynamic providerId;
  int? status;
  String? description;
  String? userType;
  String? email;
  String? contactNumber;
  int? countryId;
  int? stateId;
  int? cityId;
  String? cityName;
  String? address;
  int? providertypeId;
  String? providertype;
  int? isFeatured;
  String? displayName;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? profileImage;
  String? timeZone;
  dynamic uid;
  dynamic loginType;
  dynamic serviceAddressId;
  DateTime? lastNotificationSeen;
  double? providersServiceRating;
  double? handymanRating;
  int? isVerifyProvider;
  int? isHandymanAvailable;
  String? designation;
  dynamic handymantypeId;
  dynamic handymantype;
  String? knownLanguages;
  String? skills;
  int? isFavourite;
  List<dynamic>? playerIds;
  int? totalServicesBooked;
  dynamic whyChooseMe;

  Provider({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.providerId,
    this.status,
    this.description,
    this.userType,
    this.email,
    this.contactNumber,
    this.countryId,
    this.stateId,
    this.cityId,
    this.cityName,
    this.address,
    this.providertypeId,
    this.providertype,
    this.isFeatured,
    this.displayName,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.profileImage,
    this.timeZone,
    this.uid,
    this.loginType,
    this.serviceAddressId,
    this.lastNotificationSeen,
    this.providersServiceRating,
    this.handymanRating,
    this.isVerifyProvider,
    this.isHandymanAvailable,
    this.designation,
    this.handymantypeId,
    this.handymantype,
    this.knownLanguages,
    this.skills,
    this.isFavourite,
    this.playerIds,
    this.totalServicesBooked,
    this.whyChooseMe,
  });

  factory Provider.fromJson(Map<String, dynamic> json) => Provider(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        username: json["username"],
        providerId: json["provider_id"],
        status: json["status"],
        description: json["description"],
        userType: json["user_type"],
        email: json["email"],
        contactNumber: json["contact_number"],
        countryId: json["country_id"],
        stateId: json["state_id"],
        cityId: json["city_id"],
        cityName: json["city_name"],
        address: json["address"],
        providertypeId: json["providertype_id"],
        providertype: json["providertype"],
        isFeatured: json["is_featured"],
        displayName: json["display_name"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        profileImage: json["profile_image"],
        timeZone: json["time_zone"],
        uid: json["uid"],
        loginType: json["login_type"],
        serviceAddressId: json["service_address_id"],
        lastNotificationSeen: json["last_notification_seen"] == null
            ? null
            : DateTime.parse(json["last_notification_seen"]),
        providersServiceRating: json["providers_service_rating"]?.toDouble(),
        handymanRating: json["handyman_rating"]?.toDouble(),
        isVerifyProvider: json["is_verify_provider"],
        isHandymanAvailable: json["isHandymanAvailable"],
        designation: json["designation"],
        handymantypeId: json["handymantype_id"],
        handymantype: json["handymantype"],
        knownLanguages: json["known_languages"],
        skills: json["skills"],
        isFavourite: json["is_favourite"],
        playerIds: json["player_ids"] == null
            ? []
            : List<dynamic>.from(json["player_ids"]!.map((x) => x)),
        totalServicesBooked: json["total_services_booked"],
        whyChooseMe: json["why_choose_me"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "username": username,
        "provider_id": providerId,
        "status": status,
        "description": description,
        "user_type": userType,
        "email": email,
        "contact_number": contactNumber,
        "country_id": countryId,
        "state_id": stateId,
        "city_id": cityId,
        "city_name": cityName,
        "address": address,
        "providertype_id": providertypeId,
        "providertype": providertype,
        "is_featured": isFeatured,
        "display_name": displayName,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "profile_image": profileImage,
        "time_zone": timeZone,
        "uid": uid,
        "login_type": loginType,
        "service_address_id": serviceAddressId,
        "last_notification_seen": lastNotificationSeen?.toIso8601String(),
        "providers_service_rating": providersServiceRating,
        "handyman_rating": handymanRating,
        "is_verify_provider": isVerifyProvider,
        "isHandymanAvailable": isHandymanAvailable,
        "designation": designation,
        "handymantype_id": handymantypeId,
        "handymantype": handymantype,
        "known_languages": knownLanguages,
        "skills": skills,
        "is_favourite": isFavourite,
        "player_ids": playerIds == null
            ? []
            : List<dynamic>.from(playerIds!.map((x) => x)),
        "total_services_booked": totalServicesBooked,
        "why_choose_me": whyChooseMe,
      };
}

class ServiceDetail {
  int? id;
  String? name;
  int? categoryId;
  int? subcategoryId;
  int? serviceQuantity;
  int? providerId;
  int? price;
  String? priceFormat;
  String? type;
  int? discount;
  String? bookingDay;
  String? duration;
  int? status;
  String? description;
  int? isFeatured;
  String? providerName;
  String? providerImage;
  int? cityId;
  String? categoryName;
  String? subcategoryName;
  List<String>? attchments;
  List<AttchmentsArray>? attchmentsArray;
  int? totalReview;
  String? bookingSlot;

  num? totalRating;
  int? isFavourite;
  List<ServiceAddressMapping>? serviceAddressMapping;
  ServiceCityWiseAddress? serviceCityWiseAddress;
  bool? attchmentExtension;
  dynamic deletedAt;
  int? isSlot;
  List<SlotData>? slots;
  List<dynamic>? serviceaddon;
  List<dynamic>? multipleserviceAddons;
  String? visitType;
  int? isEnableAdvancePayment;
  int? advancePaymentAmount;
  String? dateTimeVal;
  String? minimumOrderValue;
  List<dynamic>? servicePackage;
  String? bookingDate;

  ServiceDetail({
    this.id,
    this.bookingDate,
    this.name,
    this.categoryId,
    this.subcategoryId,
    this.serviceQuantity,
    this.providerId,
    this.price,
    this.priceFormat,
    this.bookingDay,
    this.bookingSlot,
    this.type,
    this.discount,
    this.duration,
    this.status,
    this.description,
    this.isFeatured,
    this.providerName,
    this.providerImage,
    this.cityId,
    this.categoryName,
    this.subcategoryName,
    this.attchments,
    this.attchmentsArray,
    this.totalReview,
    this.totalRating,
    this.isFavourite,
    this.serviceAddressMapping,
    this.serviceCityWiseAddress,
    this.attchmentExtension,
    this.dateTimeVal,
    this.deletedAt,
    this.isSlot,
    this.slots,
    this.serviceaddon,
    this.multipleserviceAddons,
    this.visitType,
    this.isEnableAdvancePayment,
    this.advancePaymentAmount,
    this.minimumOrderValue,
    this.servicePackage,
  });

  factory ServiceDetail.fromJson(Map<String, dynamic> json) => ServiceDetail(
        id: json["id"],
        name: json["name"],
        categoryId: json["category_id"],
        subcategoryId: json["subcategory_id"],
        serviceQuantity: json["service_quantity"],
        bookingDate: json['booking_date'],
        bookingSlot: json['booking_slot'],
        providerId: json["provider_id"],
        price: json["price"],
        bookingDay: json['booking_day'],
        priceFormat: json["price_format"],
        type: json["type"],
        discount: json["discount"],
        duration: json["duration"],
        status: json["status"],
        description: json["description"],
        isFeatured: json["is_featured"],
        providerName: json["provider_name"],
        providerImage: json["provider_image"],
        cityId: json["city_id"],
        categoryName: json["category_name"],
        subcategoryName: json["subcategory_name"],
        attchments: json["attchments"] == null
            ? []
            : List<String>.from(json["attchments"]!.map((x) => x)),
        attchmentsArray: json["attchments_array"] == null
            ? []
            : List<AttchmentsArray>.from(json["attchments_array"]!
                .map((x) => AttchmentsArray.fromJson(x))),
        totalReview: json["total_review"],
        totalRating: json["total_rating"],
        isFavourite: json["is_favourite"],
        serviceAddressMapping: json["service_address_mapping"] == null
            ? []
            : List<ServiceAddressMapping>.from(json["service_address_mapping"]!
                .map((x) => ServiceAddressMapping.fromJson(x))),
        serviceCityWiseAddress: json["service_city_wise_Address"] == null
            ? null
            : ServiceCityWiseAddress.fromJson(
                json["service_city_wise_Address"]),
        attchmentExtension: json["attchment_extension"],
        deletedAt: json["deleted_at"],
        isSlot: json["is_slot"],
        slots: json["slots"] == null
            ? []
            : List<SlotData>.from(
                json["slots"]!.map((x) => SlotData.fromJson(x))),
        serviceaddon: json["serviceaddon"] == null
            ? []
            : List<dynamic>.from(json["serviceaddon"]!.map((x) => x)),
        multipleserviceAddons: json["multipleserviceAddons"] == null
            ? []
            : List<dynamic>.from(json["multipleserviceAddons"]!.map((x) => x)),
        visitType: json["visit_type"],
        isEnableAdvancePayment: json["is_enable_advance_payment"],
        advancePaymentAmount: json["advance_payment_amount"],
        minimumOrderValue: json["minimum_order_value"],
        servicePackage: json["servicePackage"] == null
            ? []
            : List<dynamic>.from(json["servicePackage"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category_id": categoryId,
        "subcategory_id": subcategoryId,
        "service_quantity": serviceQuantity,
        "provider_id": providerId,
        "price": price,
        "price_format": priceFormat,
        "booking_day": bookingDay,
        "type": type,
        "discount": discount,
        "duration": duration,
        "booking_date": bookingDate,
        "status": status,
        "description": description,
        "is_featured": isFeatured,
        "booking_slot": bookingSlot,
        "provider_name": providerName,
        "provider_image": providerImage,
        "city_id": cityId,
        "category_name": categoryName,
        "subcategory_name": subcategoryName,
        "attchments": attchments == null
            ? []
            : List<dynamic>.from(attchments!.map((x) => x)),
        "attchments_array": attchmentsArray == null
            ? []
            : List<dynamic>.from(attchmentsArray!.map((x) => x.toJson())),
        "total_review": totalReview,
        "total_rating": totalRating,
        "is_favourite": isFavourite,
        "service_address_mapping": serviceAddressMapping == null
            ? []
            : List<dynamic>.from(serviceAddressMapping!.map((x) => x.toJson())),
        "service_city_wise_Address": serviceCityWiseAddress?.toJson(),
        "attchment_extension": attchmentExtension,
        "deleted_at": deletedAt,
        "is_slot": isSlot,
        "slots": slots == null
            ? []
            : List<dynamic>.from(slots!.map((x) => x.toJson())),
        "serviceaddon": serviceaddon == null
            ? []
            : List<dynamic>.from(serviceaddon!.map((x) => x)),
        "multipleserviceAddons": multipleserviceAddons == null
            ? []
            : List<dynamic>.from(multipleserviceAddons!.map((x) => x)),
        "visit_type": visitType,
        "is_enable_advance_payment": isEnableAdvancePayment,
        "advance_payment_amount": advancePaymentAmount,
        "minimum_order_value": minimumOrderValue,
        "servicePackage": servicePackage == null
            ? []
            : List<dynamic>.from(servicePackage!.map((x) => x)),
      };
}

class AttchmentsArray {
  int? id;
  String? url;

  AttchmentsArray({
    this.id,
    this.url,
  });

  factory AttchmentsArray.fromJson(Map<String, dynamic> json) =>
      AttchmentsArray(
        id: json["id"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
      };
}

class ServiceAddressMapping {
  int? id;
  int? serviceId;
  int? providerAddressId;
  dynamic createdAt;
  dynamic updatedAt;
  ProviderAddressMapping? providerAddressMapping;

  ServiceAddressMapping({
    this.id,
    this.serviceId,
    this.providerAddressId,
    this.createdAt,
    this.updatedAt,
    this.providerAddressMapping,
  });

  factory ServiceAddressMapping.fromJson(Map<String, dynamic> json) =>
      ServiceAddressMapping(
        id: json["id"],
        serviceId: json["service_id"],
        providerAddressId: json["provider_address_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        providerAddressMapping: json["provider_address_mapping"] == null
            ? null
            : ProviderAddressMapping.fromJson(json["provider_address_mapping"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "service_id": serviceId,
        "provider_address_id": providerAddressId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "provider_address_mapping": providerAddressMapping?.toJson(),
      };
}

class ProviderAddressMapping {
  int? id;
  int? providerId;
  String? address;
  String? latitude;
  String? longitude;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic cityId;

  ProviderAddressMapping({
    this.id,
    this.providerId,
    this.address,
    this.latitude,
    this.longitude,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.cityId,
  });

  factory ProviderAddressMapping.fromJson(Map<String, dynamic> json) =>
      ProviderAddressMapping(
        id: json["id"],
        providerId: json["provider_id"],
        address: json["address"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        cityId: json["city_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "provider_id": providerId,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "city_id": cityId,
      };
}

class ServiceCityWiseAddress {
  int? id;
  String? city;
  double? lat;
  double? long;
  int? freeKm;
  int? chargesPerKm;
  int? defaultCity;

  ServiceCityWiseAddress({
    this.id,
    this.city,
    this.lat,
    this.long,
    this.freeKm,
    this.chargesPerKm,
    this.defaultCity,
  });

  factory ServiceCityWiseAddress.fromJson(Map<String, dynamic> json) =>
      ServiceCityWiseAddress(
        id: json["id"],
        city: json["city"],
        lat: json["lat"]?.toDouble(),
        long: json["long"]?.toDouble(),
        freeKm: json["free_km"],
        chargesPerKm: json["charges_per_km"],
        defaultCity: json["default_city"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "city": city,
        "lat": lat,
        "long": long,
        "free_km": freeKm,
        "charges_per_km": chargesPerKm,
        "default_city": defaultCity,
      };
}

enum Day { FRI, MON, SAT, SUN, THU, TUE, WED }

final dayValues = EnumValues({
  "fri": Day.FRI,
  "mon": Day.MON,
  "sat": Day.SAT,
  "sun": Day.SUN,
  "thu": Day.THU,
  "tue": Day.TUE,
  "wed": Day.WED
});

class Tax {
  int? id;
  int? providerId;
  String? title;
  String? type;
  int? value;

  Tax({
    this.id,
    this.providerId,
    this.title,
    this.type,
    this.value,
  });

  factory Tax.fromJson(Map<String, dynamic> json) => Tax(
        id: json["id"],
        providerId: json["provider_id"],
        title: json["title"],
        type: json["type"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "provider_id": providerId,
        "title": title,
        "type": type,
        "value": value,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
