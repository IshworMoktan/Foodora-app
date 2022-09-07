import 'package:geolocator/geolocator.dart';
import'dart:math' as Math;



class Sellers
{
  String? sellerUID;
  String? sellerName;
  String? sellerAvatarUrl;
  String? sellerEmail;
  double? lat;
  double? lng;

  Sellers({
    this.sellerUID,
    this.sellerName,
    this.sellerAvatarUrl,
    this.sellerEmail,
    this.lat,
    this.lng,
  });



  Sellers.fromJson(Map<String, dynamic> json)
  {
    sellerUID = json["sellerUID"];
    sellerName = json["sellerName"];
    sellerAvatarUrl = json["sellerAvatarUrl"];
    sellerEmail = json["sellerEmail"];
    lat = json["lat"];
    lng = json["lng"];

  }




  Map<String, dynamic> toJson()
  {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["sellerUID"] = this.sellerUID;
    data["sellerName"] = this.sellerName;
    data["sellerAvatarUrl"] = this.sellerAvatarUrl;
    data["sellerEmail"] = this.sellerEmail;
    data["lat"] = this.lat;
    data["lat"] = this.lng;
    return data;
  }

}

