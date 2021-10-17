import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {

  String location = '';
  Uri url = Uri.parse('');

  WorldTime(this.location, this.url);

  Future<String> getTime() async {
    http.Response response = await http.get(url);
    Map data = jsonDecode(response.body);

    String dateTime = data['utc_datetime'];
    String offset = data['utc_offset'];

    var now = DateTime.parse(dateTime);
    var nowDate = now.add(Duration(hours: int.parse(offset.substring(0, 3))));
    return DateFormat('yyyy-MM-dd - kk:mm').format(nowDate);
  }
}