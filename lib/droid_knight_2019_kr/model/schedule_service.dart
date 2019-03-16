

import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_notebook/droid_knight_2019_kr/model/track_schedule.dart';

Future<String> _loadAScheduleAsset(String path) async{
  return await rootBundle.loadString(path);
}

Future<List<ScheduleModel>> loadSchedule(String path) async{
  String jsonString = await _loadAScheduleAsset(path);
  final jsonResponse =json.decode(jsonString);
  ScheduleListModel schedule = new ScheduleListModel.fromJson(jsonResponse);
  return schedule.list;
}
