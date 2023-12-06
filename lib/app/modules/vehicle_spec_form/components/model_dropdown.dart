import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../components/default_text.dart';

class ModelDropdown extends StatelessWidget {
  const ModelDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Model*').normal,
        FormBuilderDropdown<String>(
          decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
          name: 'model',
          items: [
            DropdownMenuItem(
              value: 'Colt',
              child: DefText('Colt').normal,
            )
          ],
        ),
      ],
    );
  }
}
