import 'package:flutter/widgets.dart';

class ScaleAndClip extends StatelessWidget {
  const ScaleAndClip({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.scale(
      alignment: const Alignment(-0.3, -1),
      scale: 0.7,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: child,
        ),
      ),
    );
  }
}
