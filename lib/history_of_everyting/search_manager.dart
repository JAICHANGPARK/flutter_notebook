

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
    for(TimelineEntry e in entries){
      String label = e.label;
      int len = label.length;
      for(int i = 0; i< len; i++){
        for(int j = i + 1; j <= len; j++){
          String substring = label.substring(i,j).toLowerCase();
          if(_queryMap.containsKey(substring)){
            Set<TimelineEntry> labels = _queryMap[substring];
            labels.add(e);
          }else{
            _queryMap.putIfAbsent(substring, ()=> Set.from([e]));
          }
        }
      }
    }
  }

  Set<TimelineEntry> performSearch(String query){
    if(_queryMap.containsKey(query)) return _queryMap[query];
    else if(query.isNotEmpty) return Set();

    Iterable<String> keys = _queryMap

  }



}










