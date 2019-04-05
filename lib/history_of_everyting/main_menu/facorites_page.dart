

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_notebook/flare_2dm/flare_actor.dart';
import 'package:flutter_notebook/history_of_everyting/bloc_provider.dart';
import 'package:flutter_notebook/history_of_everyting/main_menu/menu_data.dart';
import 'package:flutter_notebook/history_of_everyting/main_menu/thumbnail_detail_widget.dart';
import 'package:flutter_notebook/history_of_everyting/timeline/timeline_entry.dart';
import 'package:flutter_notebook/history_of_everyting/timeline/timeline_widget.dart';
import 'package:flutter_notebook/history_of_everyting/utils/colors.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> favorites = [];
    List<TimelineEntry> entries =BlocProvider.favorites(context).favorites;
    for(int i = 0; i < entries.length; i++){
      TimelineEntry entry = entries[i];
      favorites.add(ThumbnailDetailWidget(entry, hasDivider : i  != 0,
      tapSearchResult : (TimelineEntry entry){
        MenuItemData item = MenuItemData.fromEntry(entry);
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => TimelineWidget(item,
          BlocProvider.getTimeline(context)))
        );
      }));
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightGrey,
        iconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.54),
        ),
        elevation: 0.0,
        centerTitle: false,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            color: Colors.black.withOpacity(0.5),
            onPressed: (){
          Navigator.pop(context, true);
        }),
        titleSpacing: 9.0,
        title: Text("Your Favorites",
        style: TextStyle(fontSize: 20.0,
        color: darkText.withOpacity(darkText.opacity * 0.75)),),
      ),
      body: Padding(padding:
      const EdgeInsets.symmetric(horizontal: 20.0),
        child: favorites.isEmpty?
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  width: 128.0,
                  height: 114.0,
                  margin: EdgeInsets.only(bottom: 30),
                  child: FlareActor("asset/Broken Heart.flr",
                  animation: "Heart Break",
                  shouldClip: false,),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 21),
                  width: 250,
                  child: Text("You havent't favorited anythin yet.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: darkText.withOpacity(darkText.opacity * 0.75),
                    height: 1.2,
                  ),),
                ),
                Container(
                  width: 270,
                  margin: EdgeInsets.only(bottom: 114),
                  child: Text("Browse to an event in the "
                      "timeline and tap on the heart icon"
                      " to save something in this list.",
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.5,
                    color: Colors.black.withOpacity(0.75)
                  ),),
                )
              ],
            )
          ],
        ) : ListView(children: favorites,),
      ),
    );
  }
}
















