import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:lead_management_app/app/modules/financing_form/controllers/financing_form_controller.dart';

import '../../../components/default_text.dart';

class ConditionDropdown extends GetView<FinancingFormController> {
  const ConditionDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Condition*').normal,
        const SizedBox(height: 5),
        FormBuilderDropdown<String>(
          decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
          name: 'condition',
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          items: [
            DropdownMenuItem(
              value: 'Bekas',
              child: DefText('Bekas').normal,
            ),
            DropdownMenuItem(
              value: 'Baru',
              child: DefText('Baru').normal,
            ),
          ],
        ),
      ],
    );
  }
}
