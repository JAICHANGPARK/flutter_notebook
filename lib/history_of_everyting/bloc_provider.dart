import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_notebook/history_of_everyting/blocs/favorites_bloc.dart';

class BlocProvider extends InheritedWidget {
//  final FavoritesBloc favoritesBloc;
//  final Timeline timeline;
//
//  BlocProvider(
//      {Key key,
//      FavoritesBloc fb,
//      Timeline t,
//      @required Widget child,
//      TargetPlatform platform = TargetPlatform.iOS})
//      : timeline = t ?? Timeline(platform),
//        favoritesBloc = fb ?? FavoritesBloc(),
//        super(key: key, child: child){
//
//    //TODo Create Timeline dart file and set init
//    // ToDo Timeline Setting
//
//    //TODO CREATE SEARCH MANAGER
//
//  };

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

//  static FavoritesBloc favorites(BuildContext context){
//    BlocProvider bp = (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider);
//    FavoritesBloc bloc = bp?.favoritesBloc;
//    return bloc;
//  }

  //TODO MADE getTimeLine Method













}
