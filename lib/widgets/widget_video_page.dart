import 'package:flutter/material.dart';

import '../model/m_home_data.dart';
import '../view/home_web_view.dart';

class WidgetVideoPage extends StatelessWidget {
  const WidgetVideoPage({super.key, required this.data});
  final ModelHomeData data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PageWebView(data: data),
            ),
          );
        },
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              /// card Video flex `4`
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Image(
                    image: AssetImage(data.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              ///  title Video flex `1`
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    data.title!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
