import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LevelBar extends StatefulWidget {
  final int count;
  final int totalCount;
  final double boxWidth;
  const LevelBar({
    super.key,
    required this.count,
    required this.totalCount,
    this.boxWidth = 200,
  });

  @override
  State<LevelBar> createState() => _LevelBarState();
}

class _LevelBarState extends State<LevelBar> {
  // static const double boxWidth = 200;
  late Timer timer;
  bool isRunning = false;

  double initWidth = 0;
  late double finalWidth = widget.boxWidth * (widget.count / widget.totalCount);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(microseconds: 500), () {
      timer = Timer.periodic(
        const Duration(milliseconds: 10),
        onIncrease,
      );
    });
  }

  void onIncrease(Timer timer) {
    if (initWidth > finalWidth) {
      setState(() {
        isRunning = false;
        initWidth = finalWidth;
      });
      timer.cancel();
    } else {
      setState(() {
        isRunning = true;
        initWidth = initWidth + 2;
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
    isRunning = false;
    initWidth = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Stack(
        children: [
          SizedBox(
            width: widget.boxWidth,
            height: 8,
            child: Container(
              color: const Color(0xFFD9D9D9),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              width: initWidth,
              height: 8,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: Color(0xFF00B375),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
