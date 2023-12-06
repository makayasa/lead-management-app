import 'package:flutter/material.dart';

import '../config/constants.dart';

class ContainerMark extends StatelessWidget {
  const ContainerMark({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: Center(
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: kPrimaryColor.withAlpha(50),
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(
              Icons.check,
              size: 10,
            ),
          ),
        ),
      ),
    );
  }
}
