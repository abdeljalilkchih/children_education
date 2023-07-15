import 'package:animate_do/animate_do.dart';
import 'package:children_education/model/m_home_data.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../constant/styel_text.dart';

class WidgetHomePage extends StatelessWidget {
  const WidgetHomePage({super.key, required this.data, required this.onTap});
  final ModelHomeData data;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return FadeInUp(
        delay: const Duration(milliseconds: 600),
        child: SizedBox(
            width: 500,
            height: 500,
            child: InkWell(
              /// on Tap
              onTap: onTap,
              child: FadeInUp(
                delay: const Duration(milliseconds: 600 ~/ 1.5),
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),

                    /// color BorderRadius
                    border: Border.all(color: kcolor, width: 1.5),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FadeInUp(
                          delay: const Duration(milliseconds: 650 ~/ 1.5),
                          child: SizedBox(
                            width: 100,
                            height: 100,

                            /// image home `index`
                            child: Image.asset(data.image),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FadeInUp(
                          delay: const Duration(
                            milliseconds: 700 ~/ 1.5,
                          ),
                          child: Text(
                            /// title home `index`
                            data.title!,
                            style: Styles.textStyle18,
                          ),
                        )
                      ]),
                ),
              ),
            )));
  }
}
