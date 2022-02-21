import 'package:flutter/material.dart';

class DismissibleWidget<T> extends StatelessWidget {
  final T item;
  final Widget child;
  final DismissDirectionCallback onDismissed;

  const DismissibleWidget({
    required this.item,
    required this.child,
    required this.onDismissed,
  });

  @override
  Widget build(BuildContext context) => Dismissible(
        direction: DismissDirection.endToStart,
        key: ObjectKey(item),
        background: buildSwipeActionRight(),
        child: child,
        onDismissed: onDismissed,
      );

  Widget buildSwipeActionRight() => Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color.fromRGBO(18, 108, 242, 1),
        child: const Icon(Icons.check_outlined, color: Colors.white, size: 40),
      );
}
