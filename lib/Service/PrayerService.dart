import 'package:dio/dio.dart';
import 'package:prayer_timer/Model/Model_Timer_Model.dart';


class PrayerService{

  static Dio dio = Dio();
  static Future<PrayerTimeModel>getPrayerTimes() async{
    try
        {
          const url = 'http://api.aladhan.com/v1/timingsByCity?city="Giza"&country="Egypt"';
          final response = await dio.get(url);
          if(response.statusCode == 200)
            {
              return PrayerTimeModel.FromJson(response.data);
            }
          else
            {
              throw Exception("Error Failed");
            }
        }
        catch(e)
    {
      print("Can't fetch data!!! ${e}");
      throw Exception("error fetching prayer");
    }
  }
}