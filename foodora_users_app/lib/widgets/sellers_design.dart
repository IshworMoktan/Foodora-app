import 'package:flutter/material.dart';
import 'package:foodora_users_app/mainScreens/menus_screen.dart';
import 'package:foodora_users_app/models/sellers.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math' as Math;





class SellersDesignWidget extends StatefulWidget {
  Sellers? model;
  BuildContext? context;

  SellersDesignWidget({this.model, this.context});

  @override
  _SellersDesignWidgetState createState() => _SellersDesignWidgetState();
}

class _SellersDesignWidgetState extends State<SellersDesignWidget> {
  // late Position _currentPosition;
  // List<Destination> destinationlist = List<Destination>();
  //
  // @override
  // void initState() {
  //   _getCurrentLocation();
  //   super.initState();
  // }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (c) => MenusScreen(model: widget.model)));
      },
      splashColor: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Divider(
                height: 4,
                thickness: 3,
                color: Colors.grey[300],
              ),
              Image.network(
                widget.model!.sellerAvatarUrl!,
                height: 220.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 1.0,
              ),
              Text(
                widget.model!.sellerName!,
                style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontFamily: "Train",
                ),
              ),
              Text(
                widget.model!.sellerEmail!,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),


              Text(
                widget.model!.lat!.toStringAsFixed(2) + "km" ,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),



              Divider(
                height: 4,
                thickness: 3,
                color: Colors.grey[300],
              ),
            ],
          ),
        ),
      ),
    );
  }
//
// //HaverSine formula
//   double getDistanceFromLatLonInKm({ required lat1,required lon1,required lat2,required lon2}) {
//     var R = 6371; // Radius of the earth in km
//     var dLat = deg2rad(lat2-lat1);  // deg2rad below
//     var dLon = deg2rad(lon2-lon1);
//     var a =
//         Math.sin(dLat/2) * Math.sin(dLat/2) +
//             Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
//                 Math.sin(dLon/2) * Math.sin(dLon/2)
//     ;
//
//     var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
//     var d = R * c; // Distance in km
//     return d;
//   }
//
//   double deg2rad(deg) {
//     return deg * (Math.pi/180);
//   }
//
//
//   // get Current Location
//   _getCurrentLocation() {
//     Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.best,
//         forceAndroidLocationManager: true)
//         .then((Position position) {
//       distanceCalculation(position);
//       setState(() {
//         _currentPosition = position;
//       });
//     }).catchError((e) {
//       print(e);
//     });
//   }
//
//   distanceCalculation(Position position) {
//
//       var km = getDistanceFromLatLonInKm(lat1:position.latitude, lon1: position.longitude, lat2: widget.model!.lat, lon2: widget.model!.lng);
//       // var m = Geolocator.distanceBetween(position.latitude,position.longitude, d.lat,d.lng);
//       // d.distance = m/1000;
//       var distance = km;
//       destinationlist.add(d);
//       // print(getDistanceFromLatLonInKm(position.latitude,position.longitude, d.lat,d.lng));
//
//
//
//   //
//   //   setState(() {
//   //     destinationlist.sort((a, b) {
//   //       return a.distance.compareTo(b.distance);
//   //     });
//   //   });
//   // }

}

//
// class Destination{
//   double lat;
//   double lng;
//   String name;
//   double distance;
//
//   Destination(this.lat, this.lng, this.name,{this.distance});
// }








