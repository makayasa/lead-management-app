import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../components/default_text.dart';

class MileageDropdown extends StatelessWidget {
  const MileageDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Mileage*').normal,
        FormBuilderDropdown<String>(
          decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
          name: 'mileage',
          items: [
            DropdownMenuItem(
              value: '25000 - 30000',
              child: DefText('25000 - 3000').normal,
            )
          ],
        ),
      ],
    );
  }
}