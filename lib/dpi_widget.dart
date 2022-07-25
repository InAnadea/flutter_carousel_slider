import 'package:flutter/material.dart';

class FakeDevicePixelRatio extends StatelessWidget {
  const FakeDevicePixelRatio({
    Key? key,
    required this.fakeDevicePixelRatio,
    required this.child,
  }) : super(key: key);

  final num fakeDevicePixelRatio;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final ratio =
        fakeDevicePixelRatio / WidgetsBinding.instance.window.devicePixelRatio;

    return FractionallySizedBox(
      widthFactor: 1 / ratio,
      heightFactor: 1 / ratio,
      child: Transform.scale(
        scale: ratio,
        child: child,
      ),
    );
  }
}
