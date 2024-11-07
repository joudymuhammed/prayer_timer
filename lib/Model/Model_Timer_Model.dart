class PrayerTimeModel {
  Map <String, dynamic> data;
  PrayerTimeModel({required this.data});

  factory PrayerTimeModel.FromJson(Map <String,dynamic> json)
  {
    return PrayerTimeModel(data: json["data"]["timings"] );
  }
}