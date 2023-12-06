import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:lead_management_app/app/data/models/address/subdistrict.dart';
import 'package:lead_management_app/app/modules/vehicle_spec_form/controllers/vehicle_spec_form_controller.dart';

import '../../../components/default_text.dart';

class SubdistrictDropdown extends GetView<VehicleSpecFormController> {
  const SubdistrictDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Sub-district*').normal,
        Obx(
          () => FormBuilderDropdown<Subdistrict>(
            decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
            name: 'sub_district',
            items: controller.subdistrcts
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
