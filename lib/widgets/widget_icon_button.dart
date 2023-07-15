import 'package:flutter/material.dart';

class WidgetIconBotton extends StatelessWidget {
  const WidgetIconBotton(
      {super.key,
      required this.onPressed,
      required this.onTap,
      required this.color1,
      required this.color2});
  final void Function()? onPressed;
  final void Function()? onTap;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: color1,
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: IconButton(

              /// ->
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 60,
              ),
              onPressed: onPressed),
        ),
        const SizedBox(
          width: 80,
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: color2,
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: IconButton(
            /// <-
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 60,
            ),
            onPressed: onTap,
          ),
        ),
      ],
    );
  }
}
