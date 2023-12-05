import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lead_management_app/app/components/container_dot.dart';
import 'package:lead_management_app/app/components/default_button.dart';
import 'package:lead_management_app/app/components/default_text.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:timelines/timelines.dart';

import '../controllers/vehicle_registration_controller.dart';

class VehicleRegistrationView extends GetView<VehicleRegistrationController> {
  const VehicleRegistrationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: DefText('Home').large,
        // centerTitle: true,
        leading: Container(),
      ),
      body: Padding(
        padding: kDefaultScaffoldPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 5),
                DefText('Home', color: kPrimaryColor).normal,
              ],
            ),
            const SizedBox(height: 15),
            DefText('Registration number*').extraLarge,
            const SizedBox(height: 5),
            DefText('Please insert vehicle registration number.').normal,
            const SizedBox(height: 20),
            const TextField(
              cursorColor: kPrimaryColor,
            ),
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
    );
  }
}