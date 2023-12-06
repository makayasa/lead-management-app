import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:lead_management_app/app/modules/vehicle_spec_form/controllers/vehicle_spec_form_controller.dart';

import '../../../components/default_text.dart';

class BrandDropdown extends GetView<VehicleSpecFormController> {
  const BrandDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Brand*').normal,
        FormBuilderDropdown<String>(
          decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
          name: 'brand',
          items: [
            DropdownMenuItem(
              value: 'Mitsubishi',
              child: DefText('Mitsubishi').normal,
            )
          ],
        ),
      ],
    );
  }
}
