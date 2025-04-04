import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final void Function()? onPressed;
  
  const CustomAppBar({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset('assets/images/Logo.png', height: 18),
          const Spacer(),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.search, size: 22),
          ),
        ],
      ),
    );
  }
}
