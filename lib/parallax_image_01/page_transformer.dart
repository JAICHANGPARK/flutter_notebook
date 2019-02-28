import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

typedef PageView PageViewBuilder(
    BuildContext context,
    PageVisibilityResolver visibilityResolver);

class PageVisibilityResolver {
  PageVisibilityResolver({
    ScrollMetrics metrics,
    double viewPortFraction,
  })  : this._pageMetrics = metrics,
        this._viewPortFraction = viewPortFraction;

  final ScrollMetrics _pageMetrics;
  final double _viewPortFraction;

  PageVisibility resolvePageVisibility(int pageIndex) {
    final double pagePosition = _calculatePagePosition(pageIndex);
    final double visiblePageFraction =
        _calculateVisiblePageFraction(pageIndex, pagePosition);

    return PageVisibility(
        visibleFraction: visiblePageFraction, pagePosition: pagePosition);
  }

  double _calculatePagePosition(int pageIndex) {
    final double viewPortFraction = _viewPortFraction ?? 1.0;
    final double pageViewWidth =
        (_pageMetrics?.viewportDimension ?? 1.0) * viewPortFraction;
    final double pageX = pageViewWidth * pageIndex;
    final double scrollX = (_pageMetrics?.pixels ?? 0.0);
    final pagePosition = (pageX - scrollX) / pageViewWidth;
    final safePagePosition = !pagePosition.isNaN ? pagePosition : 0.0;

    if (safePagePosition > 1.0) {
      return 1.0;
    } else if (safePagePosition < -1.0) {
      return -1.0;
    }

    return safePagePosition;
  }

  double _calculateVisiblePageFraction(int pageIndex, double pagePosition) {
    if (pagePosition > -1.0 && pagePosition <= 1.0) {
      return 1.0 - pagePosition.abs();
    }
    return 0;
  }
}

class PageVisibility {
  final double visibleFraction;
  final double pagePosition;

  PageVisibility({@required this.visibleFraction, @required this.pagePosition});
}

class PageTransformer extends StatefulWidget {


  final PageViewBuilder pageViewBuilder;


  PageTransformer({@required this.pageViewBuilder});

  @override
  _PageTransformerState createState() => _PageTransformerState();
}

class _PageTransformerState extends State<PageTransformer> {
  PageVisibilityResolver _visibilityResolver;

  @override
  Widget build(BuildContext context) {
    final pageView = widget.pageViewBuilder(context, _visibilityResolver ??
    PageVisibilityResolver());

    final controller = pageView.controller;
    final viewPortFraction = controller.viewportFraction;


    return NotificationListener<ScrollNotification>(

      onNotification: (ScrollNotification notification){
        setState(() {
          _visibilityResolver = PageVisibilityResolver(
            metrics: notification.metrics,
            viewPortFraction: viewPortFraction
          );
        });
      },
      child: pageView,

    );
  }
}











