



import 'package:flutter_notebook/history_of_everyting/article/controller/nima_interactino_controller.dart';
import 'package:flutter_notebook/nima/nima/math/mat2d.dart';
import 'package:flutter_notebook/nima/nima/math/vec2d.dart';
import 'package:flutter_notebook/nima/nima/actor_node.dart';
import 'package:flutter_notebook/nima/nima.dart';


class NewtonController extends NimaInteractionController{

  ActorNode _treeControl;
  Vec2D _lastTouchPosition;
  Vec2D _originalTranslation;


  @override
  bool advance(FlutterActor actor, Vec2D touchPosition, double elapsed) {
    if (touchPosition != null && _lastTouchPosition != null) {
      Vec2D move = Vec2D.subtract(Vec2D(), touchPosition, _lastTouchPosition);
      Mat2D toParentSpace = Mat2D();
      if (Mat2D.invert(toParentSpace, _treeControl.parent.worldTransform)) {
        Vec2D localMove = Vec2D.transformMat2(Vec2D(), move, toParentSpace);
        _treeControl.translation =
            Vec2D.add(Vec2D(), _treeControl.translation, localMove);
      }
    } else {
      _treeControl.translation = Vec2D.add(
          Vec2D(),
          _treeControl.translation,
          Vec2D.scale(
              Vec2D(),
              Vec2D.subtract(
                  Vec2D(), _originalTranslation, _treeControl.translation),
              (elapsed * 3.0).clamp(0.0, 1.0)));
    }
    _lastTouchPosition = touchPosition;
    return true;
  }

  @override
  void initialize(FlutterActor actor) {

    _treeControl = actor.getNode('ctrl_move_tree');
    if (_treeControl != null)
      _originalTranslation = Vec2D.clone(_treeControl.translation);

  }

}










