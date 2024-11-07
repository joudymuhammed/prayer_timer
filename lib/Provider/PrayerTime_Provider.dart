import 'package:flutter/cupertino.dart';

import '../Model/Model_Timer_Model.dart';
import '../Service/PrayerService.dart';

class PrayerTimeProvider with ChangeNotifier {
  PrayerTimeModel? OprayerTime;

  Future<void> fetchPrayerTimes() async {
    OprayerTime = await PrayerService.getPrayerTimes();
    notifyListeners();
  }
}