import 'package:flutter/material.dart';

class HotIcedSelectButtonWidget extends StatefulWidget {
  final bool isIce;
  final bool isHot;
  final void Function()? onIceBtnClick;
  final void Function()? onHotBtnClick;

  const HotIcedSelectButtonWidget({
    super.key,
    required this.isIce,
    required this.isHot,
    this.onIceBtnClick,
    this.onHotBtnClick,
  });

  @override
  State<HotIcedSelectButtonWidget> createState() =>
      _HotIcedSelectButtonWidgetState();
}

enum Temputure { HOT, ICED }

class _HotIcedSelectButtonWidgetState extends State<HotIcedSelectButtonWidget> {
  Temputure tempType = Temputure.HOT;

  late Color hotBgColor;
  late Color hotBorderColor;
  late Color hotTextColor;

  late Color icedBgColor;
  late Color icedBorderColor;
  late Color icedTextColor;

  @override
  void initState() {
    super.initState();
    setState(() {
      tempType = widget.isHot ? Temputure.HOT : Temputure.ICED;
    });
    colorChange(tempType);
  }

  void onChange(Temputure temputure) {
    setState(() {
      tempType = temputure;
    });
    colorChange(temputure);
  }

  void colorChange(Temputure temputure) {
    setState(() {
      if (temputure == Temputure.HOT) {
        hotBgColor = const Color(0xFFca423b);
        hotBorderColor = const Color(0xFFca423b);
        hotTextColor = const Color(0xFFFFFFFF);
        icedBgColor = Colors.transparent;
        icedBorderColor = const Color(0xFFAEAEAE);
        icedTextColor = const Color(0xFF585858);
      } else {
        hotBgColor = Colors.transparent;
        hotBorderColor = const Color(0xFFAEAEAE);
        hotTextColor = const Color(0xFF585858);
        icedBgColor = const Color(0xFF0076FF);
        icedBorderColor = const Color(0xFF0076FF);
        icedTextColor = const Color(0xFFFFFFFF);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: FilledButton(
            onPressed: () {
              onChange(Temputure.HOT);
              widget.onHotBtnClick?.call();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(hotBgColor),
              side: MaterialStatePropertyAll(BorderSide(
                color: hotBorderColor,
                width: 0.5,
              )),
              shape: const MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
              ),
            ),
            child: Text(
              Temputure.HOT.name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: hotTextColor,
              ),
            ),
          ),
        ),
        Expanded(
          child: FilledButton(
            onPressed: () {
              onChange(Temputure.ICED);
              widget.onIceBtnClick?.call();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(icedBgColor),
              side: MaterialStatePropertyAll(BorderSide(
                color: icedBorderColor,
                width: 0.5,
              )),
              shape: const MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
              ),
            ),
            child: Text(
              Temputure.ICED.name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: icedTextColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
