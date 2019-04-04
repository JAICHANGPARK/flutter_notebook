import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_notebook/history_of_everyting/timeline/timeline.dart';
import 'package:flutter_notebook/history_of_everyting/timeline/timeline_entry.dart';

class MenuSectionData {
  String label;
  Color textColor;
  Color backgroundColor;
  String assetId;
  List<MenuItemData> items = List<MenuItemData>();
}

class MenuItemData {
  String label;
  double start;
  double end;
  bool pad = false;
  double padTop = 0.0;
  double padBottom = 0.0;

  MenuItemData();

  MenuItemData.fromEntry(TimelineEntry entry) {
    label = entry.label;
    pad = true;
    TimelineAsset asset = entry.asset;
    padTop = asset == null ? 0.0 : asset.height * Timeline.AssetScreenScale;
    if (asset is TimelineAnimatedAsset) {
      padTop += asset.gap;
    }
    if (entry.type == TimelineEntryType.Era) {
      start = entry.start;
      end = entry.end;
    } else {
      double rangeBefore = double.maxFinite;
      for (TimelineEntry prev = entry.previous;
          prev != null;
          prev = prev.previous) {
        double diff = entry.start - prev.start;
        if (diff > 0.0) {
          rangeBefore = diff;
          break;
        }
      }

      double rangeAfter = double.maxFinite;
      for (TimelineEntry next = entry.next; next != null; next = next.next) {
        double diff = next.start - entry.start;
        if (diff > 0.0) {
          rangeAfter = diff;
          break;
        }
      }

      double range = min(rangeBefore, rangeAfter) / 2.0;
      start = entry.start;
      end = entry.end + range;
    }
  }
}

class MenuData {
  List<MenuSectionData> sections = [];

  Future<bool> loadFromBundle(String filename) async {
    List<MenuSectionData> menu = List<MenuSectionData>();
    String data = await rootBundle.loadString(filename);
    List jsonEntries = json.decode(data) as List;
    for (dynamic entry in jsonEntries) {
      Map map = entry as Map;
      if (map != null) {
        MenuSectionData menuSection = MenuSectionData();
        menu.add(menuSection);
        if (map.containsKey('label')) {
          menuSection.label = map["label"] as String;
        }
        if (map.containsKey('background')) {
          menuSection.backgroundColor = Color(int.parse(
                  (map['background'] as String).substring(1, 7),
                  radix: 16) +
              0xff000000);
        }

        if (map.containsKey("color")) {
          menuSection.textColor = Color(
              int.parse((map["color"] as String).substring(1, 7), radix: 16) +
                  0xff000000);
        }

        if(map.containsKey("asset")){
          menuSection.assetId = map['asset'] as String;
        }

        if(map.containsKey("items")){
          List items = map['items'] as List;
          for(dynamic item in items){
            Map itemMap = item as Map;
            if(itemMap == null){
              continue;
            }
            MenuItemData itemData = MenuItemData();
            if(itemMap.containsKey('label')){
              itemData.label = itemMap["label"] as String;
            }
            if(itemMap.containsKey('start')){
              dynamic start = itemMap["start"];
              itemData.start = start is int? start.toDouble() : start;
            }
            if(itemMap.containsKey('end')){
              dynamic end = itemMap["end"];
              itemData.end = end is int? end.toDouble() : end;
            }
            menuSection.items.add(itemData);
          }
        }
      }
    }
    sections = menu;
    return true;
  }
}
