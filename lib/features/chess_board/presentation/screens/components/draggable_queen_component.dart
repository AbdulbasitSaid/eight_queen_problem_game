import 'package:flutter/material.dart';

import 'queen_component.dart';

class DraggableQueenComponent extends StatelessWidget {
  const DraggableQueenComponent({super.key, required this.dragTargetModel});
  final DragTargetModel dragTargetModel;
  @override
  Widget build(BuildContext context) {
    return Draggable<DragTargetModel>(
      data: dragTargetModel,
      feedback: const QueenComponent(size: 52),
      childWhenDragging: QueenComponent(
        colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.onBackground.withAlpha(100),
            BlendMode.srcIn),
      ),
      child: const QueenComponent(),
    );
  }
}

enum DragTargetType {
  board,
  inventory,
}

class DragTargetModel {
  const DragTargetModel({
    this.dragType = DragTargetType.board,
    this.currentPosition = const {
      'row': 0,
      'col': 0,
    },
    this.previousPosition = const {
      'row': null,
      'col': null,
    },
  });
  final DragTargetType? dragType;
  final Map<String, int>? currentPosition;
  final Map<String, int?>? previousPosition;
}
