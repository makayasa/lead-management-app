import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:lead_management_app/app/components/container_mark.dart';
import 'package:lead_management_app/app/components/default_button.dart';
import 'package:lead_management_app/app/components/default_text.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:lead_management_app/app/data/models/seller/seller.dart';
import 'package:lead_management_app/app/modules/financing_form/components/brand_dropdown.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';
import 'package:timelines/timelines.dart';

import '../../../components/container_dot.dart';
import '../components/condition_dropdown.dart';
import '../components/district_dropdown.dart';
import '../components/exterior_color_dropdown.dart';
import '../components/financing_form_timeline.dart';
import '../components/fueltype_dropdown.dart';
import '../components/manufacture_dropdown.dart';
import '../components/miileage_dropdown.dart';
import '../components/model_dropdown.dart';
import '../components/notes_dropdown.dart';
import '../components/price_dropdown.dart';
import '../components/province_dropdown.dart';
import '../components/seller_dropdown.dart';
import '../components/subdistrict_dropdown.dart';
import '../components/transmission_dropdown.dart';
import '../components/variant_dropdown.dart';
import '../controllers/financing_form_controller.dart';

class FinancingFormView extends GetView<FinancingFormController> {
  const FinancingFormView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // controller.formKey.currentState!.saveAndValidate();
          // final data = controller.formKey.currentState!.value;
          // logKey('data', data);
        },
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        leadingWidth: 40,
        titleSpacing: 0,
        title: DefText('Registration number', color: kPrimaryColor).normal,
        // shadowColor: kBgWhite,
        surfaceTintColor: kBgWhite,
      ),
      body: Padding(
        padding: kDefaultScaffoldPadding,
        child: FormBuilder(
          key: controller.formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const ScreenHeader(
                //   text: 'Registration number',
                // ),
                // const SizedBox(height: 15),
                DefText('Specification').extraLarge,
                const SizedBox(height: 5),
                DefText('Vehicle details will be submitted on Yodamobi. Please fill in required information').normal,
                const SizedBox(height: 20),
                kDivider,
                const SizedBox(height: 20),
                const ConditionDropdown(),
                const SizedBox(height: 10),
                const BrandDropdown(),
                const SizedBox(height: 10),
                const ModelDropdown(),
                const SizedBox(height: 10),
                const VariantDropdown(),
                const SizedBox(height: 10),
                const ManufactureDropdown(),
                const SizedBox(height: 10),
                const MileageDropdown(),
                const SizedBox(height: 10),
                const FueltypeDropdown(),
                const SizedBox(height: 10),
                const TransmissionDropdown(),
                const SizedBox(height: 10),
                const ExteriorColorDropdown(),
                const SizedBox(height: 10),
                const PriceDropdown(),
                const SizedBox(height: 10),
                const Notes(),
                const SizedBox(height: 10),
                DefText('Seller info*').semilarge,
                const SizedBox(height: 5),
                DefText('Please provide seller details', color: kInactiveColor).normal,
                const SizedBox(height: 10),
                kDivider,
                const SizedBox(height: 10),
                const SellerDropdown(),
                const SizedBox(height: 10),
                DefText('Vehicle location*').semilarge,
                DefText('Please provide seller details').normal,
                const SizedBox(height: 10),
                kDivider,
                const SizedBox(height: 10),
                const ProvinceDropdown(),
                const SizedBox(height: 10),
                const DistrictDropdown(),
                const SizedBox(height: 10),
                const SubdistrictDropdown(),
                const SizedBox(height: 20),
                const FinancingFormTimeline(),
                const SizedBox(height: 20),
                kDivider,
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DefaultButton(
                      width: 70,
                      color: kBgWhite,
                      onTap: () {
                        Get.back();
                      },
                      showBorder: true,
                      child: Center(
                        child: DefText('Cancel').normal,
                      ),
                    ),
                    const SizedBox(width: 10),
                    DefaultButton(
                      width: 70,
                      onTap: () {
                        Get.toNamed(Routes.FORM_CREATED);
                      },
                      child: Center(
                        child: DefText('Next', color: kBgWhite).normal,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
