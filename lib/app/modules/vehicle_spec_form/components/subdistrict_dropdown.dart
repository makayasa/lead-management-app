import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../components/default_text.dart';

class SubdistrictDropdown extends StatelessWidget {
  const SubdistrictDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Sub-district*').normal,
        FormBuilderDropdown<String>(
          decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
          name: 'sub_district',
          items: [
            DropdownMenuItem(
              value: 'Hegarmanah',
              child: DefText('Hergarmanah').normal,
            )
          ],
        ),
      ],
    );
  }
}