import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../components/default_text.dart';

class ProviceDropdown extends StatelessWidget {
  const ProviceDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Province*').normal,
        FormBuilderDropdown<String>(
          decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
          name: 'province',
          items: [
            DropdownMenuItem(
              value: 'Jawa Barat',
              child: DefText('Jawa Barat').normal,
            )
          ],
        ),
      ],
    );
  }
}
