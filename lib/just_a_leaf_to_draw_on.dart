import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class JustALeafToDrawOn extends LeafRenderObjectWidget {
  const JustALeafToDrawOn({Key? key, required this.color});

  final Color color;

  @override
  _RenderJustALeafToDrawOn createRenderObject(BuildContext context) =>
      _RenderJustALeafToDrawOn(color: color);

  @override
  void updateRenderObject(
          BuildContext context, _RenderJustALeafToDrawOn renderObject) =>
      renderObject..color = color;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('color', color));
  }
}

class _RenderJustALeafToDrawOn extends RenderBox {
  _RenderJustALeafToDrawOn({
    required Color color,
  }) : _color = color;

  Color get color => _color;
  Color _color;

  set color(Color value) {
    if (_color == value) return;
    _color = value;
    markNeedsPaint();
  }

  @override
  double computeMinIntrinsicWidth(double height) => 50.0;

  @override
  double computeMaxIntrinsicWidth(double height) => 50.0;

  @override
  double computeMinIntrinsicHeight(double width) => 50.0;

  @override
  double computeMaxIntrinsicHeight(double width) => 50.0;

  @override
  void performLayout() {
    size = computeDryLayout(constraints);
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    final desiredWidth = constraints.maxWidth;
    final desiredHeight = 50.0;
    final desiredSize = Size(desiredWidth, desiredHeight);
    return constraints.constrain(desiredSize);
  }


  @override
  void paint(PaintingContext context, Offset offset) {
    final canvas = context.canvas;
    canvas.save();
    canvas.translate(offset.dx, offset.dy);

    final barPaint = Paint()
      ..color = color
      ..strokeWidth = 5;

    final point1 = Offset(0, size.height / 2);
    final point2 = Offset(size.width, size.height / 2);
    canvas.drawLine(point1, point2, barPaint);

    canvas.restore();
  }

}
