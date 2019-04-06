import 'package:flutter_notebook/nima/nima/math/mat2d.dart' as nima;
import 'package:flutter_notebook/nima/nima/math/vec2d.dart' as nima;
import 'package:flutter_notebook/nima/nima.dart' as nima;


/*

        Tea Time 


 */


abstract class NimaInteractionController {
  void initialize(nima.FlutterActor actor);

  bool advance(nima.FlutterActor actor, artboard, nima.Vec2D touchPosition,
      double elapsed);
}
