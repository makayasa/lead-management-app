import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:lead_management_app/app/data/models/address/province.dart';
import 'package:lead_management_app/app/modules/financing_form/controllers/financing_form_controller.dart';

import '../../../components/default_text.dart';

class ProvinceDropdown extends GetView<FinancingFormController> {
  const ProvinceDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Province*').normal,
        Obx(
          () => FormBuilderDropdown<Province>(
            decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
            name: 'province',
            validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
            onChanged: (value) {
              controller.cleardistrict();
              controller.getDistrict(value!.id);
            },
            items: controller.provinces
                .map(
                  (element) => DropdownMenuItem(
                    value: element,
                    child: DefText(element.name).normal,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
