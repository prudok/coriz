import 'package:flutter/material.dart';
import 'package:quizzylite/core/constants/app_text_styles.dart';


class GifWidget extends StatelessWidget {
  const GifWidget({super.key, required this.gifPath, required this.title});

  final String gifPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          child: Image.asset(
            gifPath,
          ),
        ),
        Text(title, style: AppTextStyles.bodyLarge,),
      ],
    );
  }
}
