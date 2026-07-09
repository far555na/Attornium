import 'package:flutter/material.dart';

class TransparentMaterialPage<T> extends Page<T> {
  final Widget child;

  const TransparentMaterialPage({
    required this.child,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  @override
  Route<T> createRoute(BuildContext context) {
    return _TransparentPageRoute<T>(page: this, child: child);
  }
}

class _TransparentPageRoute<T> extends PageRoute<T> {
  final TransparentMaterialPage<T> page;
  final Widget child;

  _TransparentPageRoute({required this.page, required this.child})
    : super(settings: page);

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool get opaque => false;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return child;
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Theme.of(context).pageTransitionsTheme.buildTransitions<T>(
      this,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }
}
