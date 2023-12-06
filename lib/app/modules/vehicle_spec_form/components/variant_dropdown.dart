import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../components/default_text.dart';

class VariantDropdown extends StatelessWidget {
  const VariantDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Variant*').normal,
        FormBuilderDropdown<String>(
          decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
          name: 'variant',
          items: [
            DropdownMenuItem(
              value: '3.9 FE 71 Solar',
              child: DefText('3.9 FE 71 Solar').normal,
            )
          ],
        ),
      ],
    );
  }
}
