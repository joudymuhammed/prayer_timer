import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prayer_timer/Provider/PrayerTime_Provider.dart';
import 'package:prayer_timer/Widgets/PrayerTime_Widget.dart';
import 'package:provider/provider.dart';

class PlayerTimeScreen extends StatelessWidget {
  const PlayerTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("prayer time"),),
      body: Consumer<PrayerTimeProvider>(builder: (context, myProv, child)
      {
        final PrayerTimesV = myProv.OprayerTime;
        if(PrayerTimesV == null)
          {
            myProv.fetchPrayerTimes();
            return Center(child: CircularProgressIndicator(),);
          }
        else
          {
            return ListView.separated(
              separatorBuilder:(context, index) => SizedBox(height: 10,) ,
              itemCount: PrayerTimesV.data.length,
              itemBuilder: (context,index)
              {
                final prayerName = PrayerTimesV.data.keys;
                final prayerTime = PrayerTimesV.data.values;
                return PrayerCard(
                  prayerName: prayerName.elementAt(index),
                  prayerTime: prayerTime.elementAt(index) );
              },

            );

          }
      },),
    );
  }
}
