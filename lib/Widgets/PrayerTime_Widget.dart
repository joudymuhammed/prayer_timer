import 'package:flutter/material.dart';

class PrayerCard extends StatelessWidget {
  const PrayerCard({required this.prayerName,required this.prayerTime});
  final prayerName;
  final prayerTime;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      shadowColor: Colors.black,
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${prayerName}"),
          Text("${prayerTime}")
      ],
    ),
    );
  }
}
