
// 타이틀 부분 나눔
import 'package:flutter/material.dart';

class AppBarSplit extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const AppBarSplit({super.key}): preferredSize = const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Dflat",
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.chevron_left),
        onPressed: () => Navigator.pop(context),
        color: Colors.black,
      ),
    );
  }
}

