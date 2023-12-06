import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../components/default_text.dart';

class ManufactureDropdown extends StatelessWidget {
  const ManufactureDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Manufacture year*').normal,
        FormBuilderDropdown<int>(
          decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
          name: 'manufacture_year',
          items: [
            DropdownMenuItem(
              value: 2014,
              child: DefText('2014').normal,
            )
          ],
        ),
      ],
    );
  }
}
