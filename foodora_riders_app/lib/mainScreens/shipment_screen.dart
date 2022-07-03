import 'package:flutter/material.dart';

class ShipmentScreen extends StatefulWidget {
  String? purchaseId;
  String? sellerId;
  String? getOrderId;
  String? purchaserAddress;
  double? purchaseLat;
  double? purchaseLng;

  ShipmentScreen({
    this.purchaseId,
    this.sellerId,
    this.getOrderId,
    this.purchaserAddress,
    this.purchaseLat,
    this.purchaseLng,
  });

  @override
  State<ShipmentScreen> createState() => _ShipmentScreenState();
}

class _ShipmentScreenState extends State<ShipmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/confirm1.png",
            width: 350,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/restaurant.png',
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
