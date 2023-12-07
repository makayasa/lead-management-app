import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';
import 'package:lead_management_app/app/components/container_dot.dart';
import 'package:lead_management_app/app/components/default_button.dart';
import 'package:lead_management_app/app/components/default_text.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:timelines/timelines.dart';

import '../../../components/screen_header.dart';
import '../controllers/vehicle_registration_controller.dart';

class VehicleRegistrationView extends GetView<VehicleRegistrationController> {
  const VehicleRegistrationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: DefText('Home', color: kPrimaryColor).normal,
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
      ),
      body: Padding(
        padding: kDefaultScaffoldPadding,
        child: FormBuilder(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefText('Registration number*').extraLarge,
              const SizedBox(height: 5),
              DefText('Please insert vehicle registration number.').normal,
              const SizedBox(height: 20),
              FormBuilderTextField(
                name: 'license_plate',
                controller: controller.textEditingController,
                onChanged: (value) {},
                autovalidateMode: AutovalidateMode.onUserInteraction,
                textCapitalization: TextCapitalization.characters,
                validator: FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(),
                    FormBuilderValidators.match(r"^[A-Z]{1,2}\s?\d{1,4}\s?[A-Z]{0,3}$", errorText: 'Incorrect lincese plate format.'),
                  ],
                ),
              ),
              // TextField(
              //   controller: controller.textEditingController,
              //   cursorColor: kPrimaryColor,
              // ),
              const SizedBox(height: 10),
              DefaultButton(
                width: double.infinity,
                onTap: () {
                  controller.next();
                },
                child: Center(
                  child: DefText('Next', color: kBgWhite).normal,
                ),
              ),
              const SizedBox(height: 35),
              Timeline(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  TimelineTile(
                    nodeAlign: TimelineNodeAlign.start,
                    node: TimelineNode(
                      indicator: ContainerDot(),
                      indicatorPosition: 0,
                      endConnector: timelineConnector(),
                    ),
                    contents: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DefText('Registration number', color: kPrimaryColor).semilarge,
                        const SizedBox(height: 5),
                        DefText('Please insert vehicle registration number', color: kPrimaryColor).normal,
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  TimelineTile(
                    nodeAlign: TimelineNodeAlign.start,
                    node: TimelineNode(
                      indicatorPosition: 0,
                      indicator: const ContainerDot(
                        color: kInactiveColor,
                      ),
                      startConnector: timelineConnector(),
                      endConnector: timelineConnector(color: kInactiveColor),
                    ),
                    contents: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        DefText('Detail information', color: kPrimaryColor).semilarge,
                        const SizedBox(height: 5),
                        DefText('Please insert vehicle detail information').normal,
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
