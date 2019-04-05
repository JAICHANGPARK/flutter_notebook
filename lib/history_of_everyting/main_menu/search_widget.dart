import 'package:flutter/material.dart';
import 'package:flutter_notebook/history_of_everyting/utils/colors.dart';

class SearchWidget extends StatelessWidget {
  final FocusNode _searchFocusNode;
  final TextEditingController _searchController;

  SearchWidget(this._searchFocusNode, this._searchController, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(24.0),
      ),
      height: 40.0,
      child: Theme(
          data: ThemeData(
            primaryColor: darkText.withOpacity(darkText.opacity * 0.5),
          ),
          child: TextField(
            controller: _searchController,
            focusNode: _searchFocusNode,
            decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                    fontSize: 16.0,
                    color: darkText.withOpacity(darkText.opacity * 0.5)),
                prefixIcon: Icon(Icons.search),
                suffixIcon: _searchFocusNode.hasFocus
                    ? IconButton(
                        icon: Icon(Icons.cancel),
                        onPressed: () {
                          _searchFocusNode.unfocus();
                          _searchController.clear();
                        },
                      )
                    : null,
            border: InputBorder.none),
            style: TextStyle(
              fontSize: 16,
                color: darkText.withOpacity(darkText.opacity)
            ),
          )),
    );
  }
}










