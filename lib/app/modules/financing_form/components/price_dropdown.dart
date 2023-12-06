import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../components/default_text.dart';
import '../../../config/constants.dart';

class PriceDropdown extends StatelessWidget {
  const PriceDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Price*').normal,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: kDefaultBorderRadius10,
            border: Border.all(
              color: kBgBlack,
            ),
          ),
          height: 40,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              DefText('Rp', color: kInactiveColor).normal,
              const VerticalDivider(
                color: kBgBlack,
              ),
              Expanded(
                child: FormBuilderTextField(
                  name: 'price',
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}