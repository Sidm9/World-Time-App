import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // Location name for the UI

  String time; // Time in that location

  String flag; // URL to an asset flag icon

  String url; // This is the location URL for the endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      // Make the request

      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      //Get properties from data;

      String datetime = data['datetime'];

      String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);
      //print(offset);

      // create DateTime Object

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set time property
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('Caught error: $e');
      time = 'Could not get time';
    }
  }
}
