import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../components/default_text.dart';

class DistrictDropdown extends StatelessWidget {
  const DistrictDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('District*').normal,
        FormBuilderDropdown<String>(
          decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
          name: 'district',
          items: [
            DropdownMenuItem(
              value: 'Bandung',
              child: DefText('Bandung').normal,
            )
          ],
        ),
      ],
    );
  }
}
