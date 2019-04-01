import 'package:flutter/material.dart';
import 'package:flutter_notebook/history_of_everyting/timeline/timeline_entry.dart';

import 'package:shared_preferences/shared_preferences.dart';

class FavoritesBloc {
  static const String FAVORITES_KEY = "Favorites";

  //TODo Create Time Line Entry
  final List<TimelineEntry> _favorites = [];

  init(List<TimelineEntry> entries) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favs = prefs.getStringList(FavoritesBloc.FAVORITES_KEY);
    Map<String, TimelineEntry> entriesMap = new Map();
    for (TimelineEntry e in entries) {
      entriesMap.putIfAbsent(e.label, () => e);
    }
    if (favs != null) {
      for (String f in favs) {
        TimelineEntry entry = entriesMap[f];
        if (entry != null) {
          _favorites.add(entry);
        }
      }
    }
    _favorites
        .sort((TimelineEntry a, TimelineEntry b) => a.start.compareTo(b.start));
  }


  List<TimelineEntry> get favorites => _favorites;

  addFavorite(TimelineEntry e){
    if(!_favorites.contains(e)){
      this.favorites.add(e);
      _favorites.sort((TimelineEntry a, TimelineEntry b) => a.start.compareTo(b.start));
      _save();
    }
  }
  void removeFavorite(TimelineEntry e){
    if(_favorites.contains(e)){
      this._favorites.remove(e);
      _save();
    }
  }

  void _save() {
    SharedPreferences.getInstance().then((prefs){
      List<String> favList = _favorites.map((TimelineEntry en)=>en.label).toList();
      prefs.setStringList(FavoritesBloc.FAVORITES_KEY, favList); //save List
    });
  }

}


