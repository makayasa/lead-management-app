import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lead_management_app/app/components/default_button.dart';
import 'package:lead_management_app/app/components/default_text.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';

import '../controllers/form_created_controller.dart';

class FormCreatedView extends GetView<FormCreatedController> {
  const FormCreatedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Container(),
        // title: Container(
        //   height: 100,
        //   child: Image.asset(
        //     'assets/yoda-central.png',
        //   ),
        // ),
        // centerTitle: true,
      ),
      body: Padding(
        padding: kDefaultScaffoldPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: kPrimaryColor.withAlpha(30),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withAlpha(60),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.info_outline,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            DefText(
              'Lead has been successfully\nadvertised',
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
            ).extraLarge,
            const SizedBox(height: 10),
            Container(
              child: DefText(
                'Check your leads on the Home menu. If a problem occurs, please contact Customer Services.',
                textAlign: TextAlign.center,
              ).semilarge,
            ),
            const SizedBox(height: 20),
            DefaultButton(
              onTap: () async {
                Get.offNamedUntil(Routes.DASHBOARD, (route) => false);
                // Get.toNamed(page)
                Get.toNamed(Routes.FINANCING);
                Get.toNamed(Routes.DETAIL_FINANCING);
              },
              child: Center(
                child: DefText('Check card', color: kBgWhite).semilarge,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefText(
                  'Want to submit another?',
                ).normal,
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Get.offNamedUntil(Routes.VEHICLE_REGISTRATION, (route) => false);
                  },
                  child: DefText('Click here', color: kPrimaryColor, fontWeight: FontWeight.bold).normal,
                ),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Get.offNamedUntil(Routes.DASHBOARD, (route) => false);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    size: 20,
                  ),
                  const SizedBox(width: 5),
                  DefText('Back to home').normal,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
