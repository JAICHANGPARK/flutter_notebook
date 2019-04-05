import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_notebook/history_of_everyting/bloc_provider.dart';
import 'package:flutter_notebook/history_of_everyting/main_menu/collapsible.dart';
import 'package:flutter_notebook/history_of_everyting/main_menu/menu_data.dart';
import 'package:flutter_notebook/history_of_everyting/main_menu/search_widget.dart';
import 'package:flutter_notebook/history_of_everyting/main_menu/thumbnail_detail_widget.dart';
import 'package:flutter_notebook/history_of_everyting/search_manager.dart';
import 'package:flutter_notebook/history_of_everyting/timeline/timeline_entry.dart';
import 'package:flutter_notebook/history_of_everyting/timeline/timeline_widget.dart';
import 'package:flutter_notebook/history_of_everyting/utils/colors.dart';

class MainMenuWidget extends StatefulWidget {
  @override
  _MainMenuWidgetState createState() => _MainMenuWidgetState();
}

class _MainMenuWidgetState extends State<MainMenuWidget> {
  bool _isSearching = false;
  bool _isSectionActive = true;
  List<TimelineEntry> _searchResults = List<TimelineEntry>();
  final MenuData _menu = MenuData();
  final TextEditingController _searchTextController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  Timer _searchTimer;

  cancelSearch() {
    if (_searchTimer != null && _searchTimer.isActive) {
      _searchTimer.cancel();
      _searchTimer = null;
    }
  }

  _restoreSection(v) => setState(() => _isSectionActive = true);

  _pauseSection() => setState(() => _isSectionActive = false);

  navigationToTimeline(MenuItemData item) {
    _pauseSection();
    Navigator.of(context)
        .push(MaterialPageRoute(
          builder: (context) =>
              TimelineWidget(item, BlocProvider.getTimeline(context)),
        ))
        .then(_restoreSection);
  }

  updateSearch() {
    cancelSearch();
    if (!_isSearching) {
      setState(() {
        _searchResults = List<TimelineEntry>();
      });
      return;
    }

    String txt = _searchTextController.text.trim();
    _searchTimer = Timer(Duration(milliseconds: txt.isEmpty ? 0 : 350), () {
      Set<TimelineEntry> res = SearchManager.init().performSearch(txt);
      setState(() {
        _searchResults = res.toList();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _menu.loadFromBundle("assets/menu.json").then((bool success) {
      if (success) setState(() {});
    });
    _searchFocusNode.addListener(() {
      setState(() {
        _isSearching = _searchFocusNode.hasFocus;
        updateSearch();
      });
    });
  }

  Future<bool> _popSearch() async {
    if (_isSearching) {
      setState(() {
        _searchFocusNode.unfocus();
        _searchTextController.clear();
        _isSearching = false;
      });
      return Future(() => false);
    } else {
      Navigator.of(context).pop(true);
      return Future(() => true);
    }
  }

  void _tapSearchResult(TimelineEntry entry) {
    navigationToTimeline(MenuItemData.fromEntry(entry));
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    List<Widget> tail = [];
    if (_isSearching) {
      for (int i = 0; i < _searchResults.length; i++) {
        tail.add(RepaintBoundary(
          child: ThumbnailDetailWidget(
            _searchResults[i],
            hasDivider: i != 0,
            tapSearchResult: _tapSearchResult,
          ),
        ));
      }
    } else {}

    return WillPopScope(
      onWillPop: _popSearch,
      child: Container(
        color: background,
        child: Padding(
          padding: EdgeInsets.only(top: devicePadding.top),
          child: SingleChildScrollView(
            padding:
                EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Collapsible(
                  isCollapsed: _isSearching,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 12.0),
                        child: Opacity(
                          opacity: 0.85,
                          child: Image.asset(
                            ""
                                "assets/twoDimensions_logo.png",
                            height: 10.0,
                          ),
                        ),
                      ),
                      Text(
                        "The History of Everything",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: darkText.withOpacity(darkText.opacity * 0.75),
                          fontSize: 34,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 22.0),
                  child: SearchWidget(_searchFocusNode, _searchTextController),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
