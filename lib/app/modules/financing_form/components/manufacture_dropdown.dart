import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lead_management_app/app/data/dummy_data.dart';

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
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          items: DummyData()
              .manufactureYears
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: DefText('$e').normal,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
