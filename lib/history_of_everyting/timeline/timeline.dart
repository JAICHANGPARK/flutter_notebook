//import 'dart:async';
//
//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/scheduler.dart';
//import 'package:flutter/services.dart' show rootBundle;
//
//import 'package:flutter_notebook/history_of_everyting/timeline/timeline_entry.dart';
//import 'package:flutter_notebook/history_of_everyting/timeline/timeline_utils.dart';
//
//
//
//import 'package:flutter_notebook/nima/nima.dart' as nima;
//import 'package:flutter_notebook/nima/nima/actor_image.dart' as nima;
//import 'package:flutter_notebook/nima/nima/animation/actor_animation.dart' as nima;
//import 'package:flutter_notebook/nima/nima/math/aabb.dart' as nima;
//import 'package:flutter_notebook/nima/nima/math/vec2d.dart' as nima;
//import 'package:flare_flutter/flare.dart' as flare;
//import 'package:flare_dart/math/aabb.dart' as flare;
//import 'package:flare_dart/math/vec2d.dart' as flare;
//
//typedef PaintCallback();
//typedef ChangeEraCallback(TimelineEntry era);
//typedef ChangeHeaderColorCallback(Color background, Color text);
//
//class Timeline{
//  static const double LineWidth = 2.0;
//  static const double LineSpacing = 10.0;
//  static const double DepthOffset = LineSpacing + LineWidth;
//  static const double EdgePadding = 8.0;
//  static const double MoveSpeed = 10.0;
//  static const double MoveSpeedInteracting = 40.0;
//  static const double Deceleration  = 3.0;
//  static const double GutterLeft = 45.0;
//  static const double GutterLeftExpanded = 75.0;
//
//  static const double EdgeRadius = 4.0;
//  static const double MinChildLength = 50.0;
//  static const double BubbleHeight = 50.0;
//  static const double BubbleArrowSize = 19.0;
//  static const double BubblePadding = 20.0;
//  static const double BubbleTextHeight = 20.0;
//  static const double AssertPadding = 30.0;
//  static const double Parallax = 100.0;
//  static const double AssetScreenScale = 0.3;
//  static const double InitialViewportPadding = 100.0;
//  static const double TravelViewportPaddingTop = 400.0;
//
//  static const double ViewportPaddingTop = 120.0;
//  static const double ViewportPaddingBottom = 100.0;
//  static const int SteadyMilliseconds = 500;
//
//  final TargetPlatform _platform;
//  double _start = 0.0;
//  double _end = 0.0;
//  double _renderStart;
//  double _renderEnd;
//  double _lastFrameTime = 0.0;
//  double _height = 0.0;
//  double _firstOnScreenEntryY = 0.0;
//  double _lastEntryY = 0.0;
//
//  double _lastOnScreenEntryY = 0.0;
//  double _offsetDepth  = 0.0;
//  double _renderOffsetDepth  = 0.0;
//  double _labelX  = 0.0;
//  double _renderLabelX  = 0.0;
//  double _lastAssetY  = 0.0;
//  double _prevEntryOpacity  = 0.0;
//  double _distanceToPrevEntry  = 0.0;
//  double _nextEntryOpacity  = 0.0;
//  double _distanceToNextEntry = 0.0;
//  double _simulationTime  = 0.0;
//  double _timeMin  = 0.0;
//  double _timeMax  = 0.0;
//  double _gutterWidth  = GutterLeft;
//
//  bool _showFavorites = false;
//  bool _isFrameScheduled = false;
//  bool _isInteracting = false;
//  bool _isScaling = false;
//  bool _isActive = false;
//  bool _isSteady = false;
//
//  HeaderColors _currentHeaderColors;
//
//  Color _headerTextColor;
//  Color _headerBackgroundColor;
//
//  ScrollPhysics _scrollPhysics;
//  ScrollMetrics _scrollMetrics;
//  Simulation _scrollSimulation;
//
//  EdgeInsets padding = EdgeInsets.zero;
//  EdgeInsets devicePadding = EdgeInsets.zero;
//  Timer _steadyTimer;
//
//  TimelineEntry _currentEra;
//  TimelineEntry _lastEra;
//
//  TimelineEntry _nextEntry;
//  TimelineEntry _renderNextEntry;
//  TimelineEntry _prevEntry;
//  TimelineEntry _renderPrevEntry;
//
//  List<TimelineBackgroundColor> _backgroundColors;
//  List<TickColors> _tickColors;
//  List<HeaderColors> _headerColors;
//  List<TimelineEntry> _entries;
//  List<TimelineEntry> _renderAssets;
//
//  Map<String, TimelineEntry> _entriesById = Map<String, TimelineEntry>();
//  Map<String, nima.FlutterActor> _nimaResources = Map<String,
//  nima.FlutterActor>();
//  Map<String, flare.FlutterActor> _flareResources =
//      Map<String, flare.FlutterActor>();
//
//  PaintCallback onNeedPaint;
//  ChangeEraCallback onEraChanged;
//  ChangeHeaderColorCallback onHeaderColorsChanged;
//  Timeline(this._platform){
//    setViewport(start:1536.0, end: 3072.0);
//  }
//
//  double get renderOffsetDepth => _renderOffsetDepth;
//  double get renderLabelX => _renderLabelX;
//
//  double get end => _end;
//  double get start => _start;
//
//  double get renderEnd => _renderEnd;
//  double get renderStart => _renderStart;
//
//  double get gutterWidth => _gutterWidth;
//
//  double get nextEntryOpacity => _nextEntryOpacity;
//  double get prevEntryOpacity => _prevEntryOpacity;
//
//  bool get isInteracting => _isInteracting;
//
//  bool get showFavorites => _showFavorites;
//
//  bool get isActive => _isActive;
//
//  Color get headerTextColor => _headerTextColor;
//
//  Color get headerBackgroundColor => _headerBackgroundColor;
//
//  HeaderColors get currentHeaderColors => _currentHeaderColors;
//
//  TimelineEntry get prevEntry => _prevEntry;
//  TimelineEntry get nextEntry => _nextEntry;
//  TimelineEntry get currentEra => _currentEra;
//
//  List<TimelineEntry> get entries => _entries;
//  List<TimelineBackgroundColor> get backgroundColors => _backgroundColors;
//  List<TickColors> get tickColors => _tickColors;
//  List<TimelineEntry> get renderAssets => _renderAssets;
//
//  set showFavorites(bool value) {
//    _showFavorites = value;
//  }
//
//  set isInteracting(bool value) {
//    _isInteracting = value;
//  }
//
//  set isScaling(bool value) {
//    _isScaling = value;
//  }
//
//  set isActive(bool value) {
//    _isActive = value;
//  }
//
//
//
////Fuckin
//
//
//
//}
//
//
//
//
//
//
//
//
//
//
//
//
