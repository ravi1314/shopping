import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 10,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(63),
      )),
      child: Container(
        height: size.height * 0.95,
        width: size.width * 0.67,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(63),
            ),
            image: DecorationImage(
                image: AssetImage(
                  'asset/image/tree2.jpg',
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
