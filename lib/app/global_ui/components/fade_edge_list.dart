import 'package:app_uninter/app/data/helpers/index.dart';
import 'package:flutter/material.dart';

class FadeEdgeList extends StatefulWidget {
  final List<Widget> items;
  final Axis direction;
  final double? height;
  final double? width;
  final Helpers helpers = Helpers();

  FadeEdgeList({
    required this.items,
    this.direction = Axis.vertical,
    this.height,
    this.width,
  }) {
    assert(width != null || height != null, '[FadeEdgeList] É obrigatório informar o width e/ou height.');
  }

  @override
  State<FadeEdgeList> createState() => _FadeEdgeListState();
}

class _FadeEdgeListState extends State<FadeEdgeList> {
  double _stopStart = 0;
  double _stopEnd = 1;

  final blurFactorLeft = 0.05;
  final blurFactorRight = 0.07;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        setState(() {
          _stopStart = scrollNotification.metrics.pixels / 10;
          _stopEnd = (scrollNotification.metrics.maxScrollExtent - scrollNotification.metrics.pixels) / 10;

          _stopStart = _stopStart.clamp(0.0, 1.0);
          _stopEnd = _stopEnd.clamp(0.0, 1.0);
        });
        return true;
      },
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: SafeArea(
          child: ShaderMask(
            shaderCallback: (Rect rect) {
              return LinearGradient(
                begin: widget.direction == Axis.horizontal ? Alignment.centerLeft : Alignment.topCenter,
                end: widget.direction == Axis.horizontal ? Alignment.centerRight : Alignment.bottomCenter,
                colors: const [Colors.black, Colors.transparent, Colors.transparent, Colors.black],
                stops: [0.0, blurFactorLeft * _stopStart, 1 - blurFactorRight * _stopEnd, 1.0],
              ).createShader(rect);
            },
            blendMode: BlendMode.dstOut,
            child: Padding(
              padding: widget.helpers.paddingAll(1),
              child: SingleChildScrollView(
                scrollDirection: widget.direction,
                child: widget.direction == Axis.vertical ? Column(children: widget.items) : Row(children: widget.items),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
