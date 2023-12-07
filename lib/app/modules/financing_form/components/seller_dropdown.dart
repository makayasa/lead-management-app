import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../../components/default_text.dart';
import '../../../config/constants.dart';
import '../../../data/models/seller/seller.dart';
import '../controllers/financing_form_controller.dart';

class SellerDropdown extends GetView<FinancingFormController> {
  const SellerDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Seller*').normal,
        Obx(
          () => FormBuilderDropdown<Seller>(
            decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
            name: 'seller',
            items: controller.sellers
                .map(
                  (element) => DropdownMenuItem(
                    value: element,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        DefText(element.sellerName, maxLine: 1).normal,
                        const SizedBox(width: 10),
                        Flexible(
                          child: DefText(element.address.fullAddress, maxLine: 1, color: kInactiveColor).normal,
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
