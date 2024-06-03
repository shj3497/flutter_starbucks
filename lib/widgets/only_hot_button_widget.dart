import 'package:flutter/material.dart';

class OnlyHotButtonWidget extends StatelessWidget {
  const OnlyHotButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: FilledButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.transparent),
              side: MaterialStatePropertyAll(BorderSide(
                color: Color(0xFFAEAEAE),
                width: 0.5,
              )),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
            ),
            child: const Text(
              'HOT ONLY',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFFca423b),
              ),
            ),
          ),
        )
      ],
    );
  }
}
