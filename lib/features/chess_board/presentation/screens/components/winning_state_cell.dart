import 'package:flutter/material.dart';

class WinningStateCell extends StatelessWidget {
  const WinningStateCell({
    super.key,
    required this.row,
    required this.col,
  });

  final int row;
  final int col;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Theme.of(context).colorScheme.secondary.withOpacity(.6)),
        color: (row + col) % 2 == 0
            ? Theme.of(context).colorScheme.secondary.withOpacity(.6)
            : Theme.of(context).colorScheme.background.withOpacity(.6),
      ),
      child: Center(
        child: Text(
          '👸🏼',
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    );
  }
}
