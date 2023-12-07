import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../components/default_text.dart';

class TransmissionDropdown extends StatelessWidget {
  const TransmissionDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Transmission*').normal,
        FormBuilderDropdown<String>(
          decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
          name: 'transmission',
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          items: [
            DropdownMenuItem(
              value: 'Manual',
              child: DefText('Manual').normal,
            )
          ],
        ),
      ],
    );
  }
}
