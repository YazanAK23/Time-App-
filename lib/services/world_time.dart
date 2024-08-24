import 'dart:convert';
import 'package:http/http.dart';
import'package:intl/intl.dart';
class WorldTime {

  String ?  location; // location name for the UI
  String ? time; // the time in that location
  String ? flag; // url to an asset flag icon
  String ?  url; // location url for api endpoint
  bool ? isDaytime; // true or false if daytime or not
  WorldTime({this.location, this.flag, this.url});
    Future<void> getTime() async {
    try {
      //make the request
      Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
      print(data);
      print(data['datetime']);
      print(data['utc_offset']);
      DateTime now = DateTime.parse(data['datetime']);
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
    // //make the request
    // Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
    // Map data = jsonDecode(response.body);
    // print(data);
    // print(data['datetime']);
    // print(data['utc_offset']);
    // DateTime now = DateTime.parse(data['datetime']);
    // time = now.toString();

    //simulate a network request for a username
    // String username = await Future.delayed(Duration(seconds: 3), () async {
    //   return 'Yoshi';
    // });
  
    // String bio = await Future.delayed(Duration(seconds: 2), () async {
    //   return '2 seconds later';
    // });
  
    // print('$username - $bio');
  }
  

}
