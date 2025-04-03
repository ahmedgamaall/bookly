import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          // Image.asset(Assets.logo, height: 18),
          const Spacer(),
          IconButton(
            onPressed: () {
              // GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: const Icon(Icons.search, size: 22),
          ),
        ],
      ),
    );
  }
}
