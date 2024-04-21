import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ChessBoardScreen extends HookWidget {
  const ChessBoardScreen({super.key});
  static const String routeName = '/chess-board';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chess Board'),
      ),
      body: const Center(
        child: Text('Chess Board'),
      ),
    );
  }
}
