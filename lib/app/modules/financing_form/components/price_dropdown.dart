import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:lead_management_app/app/modules/financing_form/controllers/financing_form_controller.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';

import '../../../components/default_text.dart';
import '../../../config/constants.dart';

class PriceDropdown extends GetView<FinancingFormController> {
  const PriceDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Price*').normal,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          decoration: BoxDecoration(
            borderRadius: kDefaultBorderRadius10,
            border: Border.all(
              color: kBgBlack,
            ),
          ),
          height: 50,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              DefText('Rp', color: kInactiveColor).normal,
              const VerticalDivider(
                color: kBgBlack,
              ),
              Expanded(
                child: FormBuilderTextField(
                  name: 'price',
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CurrencyInputFormatter(),
                  ],
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
