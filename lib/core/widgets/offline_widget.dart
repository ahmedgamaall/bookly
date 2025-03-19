import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class OfflineWidget extends StatelessWidget {
  const OfflineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(image: AssetImage(Assets.offlineGif), fit: BoxFit.fill),
    );
  }
}
