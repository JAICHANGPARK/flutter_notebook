



import 'package:flutter_notebook/flare_2dm/flare/math/mat2d.dart' as flare;
import 'package:flutter_notebook/flare_2dm/flare.dart' as flare;
import 'package:flutter_notebook/flare_2dm/flare/math/vec2d.dart' as flare;


abstract class FlareInteractionController{
  void initialize(flare.FlutterActorArtboard artboard);

  bool advance(flare.FlutterActorArtboard artboard, flare.Vec2D touchPosition,
      double elapsed);

}
