import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_notebook/history_of_everyting/main_menu/thumbnail.dart';
import 'package:flutter_notebook/history_of_everyting/timeline/timeline_entry.dart';
import 'package:flutter_notebook/history_of_everyting/utils/colors.dart';

typedef TapSearchResultCallback(TimelineEntry entry);

class ThumbnailDetailWidget extends StatelessWidget {
  final TimelineEntry timelineEntry;
  final bool hasDivider;
  final TapSearchResultCallback tapSearchResult;

  ThumbnailDetailWidget(this.timelineEntry,
      {this.hasDivider, this.tapSearchResult, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          if (tapSearchResult != null) {
            tapSearchResult(timelineEntry);
          }
        },
        child: Column(
          children: <Widget>[
            hasDivider
                ? Container(
                    height: 1,
                    color: const Color.fromRGBO(151, 151, 151, 0.29),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ThumbnailWidget(timelineEntry),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 17.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            timelineEntry.label,
                            style: TextStyle(
                                fontSize: 20.0,
                                color: darkText
                                    .withOpacity(darkText.opacity * 0.75)),
                          ),
                          Text(
                            timelineEntry.formatYearsAgo(),
                            style: TextStyle(
                                fontSize: 14.0,
                                color: darkText.withOpacity(0.5)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
