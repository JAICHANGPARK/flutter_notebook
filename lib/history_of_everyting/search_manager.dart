

import 'dart:collection';

import 'package:flutter_notebook/history_of_everyting/timeline/timeline_entry.dart';

class SearchManager{
  static final SearchManager _searchManager = SearchManager._internal();
  final SplayTreeMap<String, Set<TimelineEntry>> _queryMap =
      SplayTreeMap<String, Set<TimelineEntry>>();

  SearchManager._internal();

  factory SearchManager.init([List<TimelineEntry> entries]){
    if(entries != null){
      _searchManager._fill(entries);
    }
    return _searchManager;
  }

  _fill(List<TimelineEntry> entries){
    _queryMap.clear();
    
  }


}