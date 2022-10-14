import 'dart:ffi';

import 'package:first_app/uitls/app_layout.dart';
import 'package:first_app/uitls/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelsSreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelsSreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    print("hotel price is${hotel["price"]}");
    final size = Applayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.grey.shade200,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel["image"]}"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel["place"],
            style: Styles.headLine2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            hotel["destination"],
            style: Styles.headLine3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            hotel["\$${hotel["price"]}/night"],
            style: Styles.headLine1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
