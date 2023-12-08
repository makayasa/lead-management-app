import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lead_management_app/app/components/default_text.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:lead_management_app/app/utils/helpers/financing_card_helpers.dart';

import '../components/financing_tab_item.dart';
import '../controllers/financing_controller.dart';

class FinancingView extends GetView<FinancingController> {
  const FinancingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        leadingWidth: 40,
        titleSpacing: 0,
        title: DefText('Home', color: kPrimaryColor).normal,
      ),
      body: SingleChildScrollView(
        padding: kDefaultScaffoldPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            DefText('Financing').large,
            const SizedBox(height: 10),
            DefText('Select a card based on pipeline, last update & seller').normal,
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                // padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 30,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  border: Border.all(
                    color: kInactiveColor,
                  ),
                  borderRadius: kDefaultBorderRadius10,
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Obx(
                      () => FinancingTabItem(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        // text: 'Listing',
                        isSelected: controller.status.value == FinancingStatusHelpers.LISTING,
                        text: FinancingStatusHelpers.LISTING,
                        onTap: () {
                          controller.status.value = FinancingStatusHelpers.LISTING;
                          controller.getFinancingsByStatus(status: FinancingStatusHelpers.LISTING);
                        },
                      ),
                    ),
                    const VerticalDivider(
                      width: 1,
                    ),
                    Obx(
                      () => FinancingTabItem(
                        text: FinancingStatusHelpers.INSPECTING,
                        isSelected: controller.status.value == FinancingStatusHelpers.INSPECTING,
                        onTap: () {
                          controller.status.value = FinancingStatusHelpers.INSPECTING;
                          controller.getFinancingsByStatus(status: FinancingStatusHelpers.INSPECTING);
                        },
                      ),
                    ),
                    const VerticalDivider(
                      width: 5,
                    ),
                    Obx(
                      () => FinancingTabItem(
                        text: FinancingStatusHelpers.VISITED,
                        isSelected: controller.status.value == FinancingStatusHelpers.VISITED,
                        onTap: () {
                          controller.status.value = FinancingStatusHelpers.VISITED;
                          controller.getFinancingsByStatus(status: FinancingStatusHelpers.VISITED);
                        },
                      ),
                    ),
                    const VerticalDivider(
                      width: 5,
                    ),
                    Obx(
                      () => FinancingTabItem(
                        text: FinancingStatusHelpers.ASSIGNING_SURVEYOR,
                        isSelected: controller.status.value == FinancingStatusHelpers.ASSIGNING_SURVEYOR,
                        onTap: () {
                          controller.status.value = FinancingStatusHelpers.ASSIGNING_SURVEYOR;
                          controller.getFinancingsByStatus(status: FinancingStatusHelpers.ASSIGNING_SURVEYOR);
                        },
                      ),
                    ),
                    const VerticalDivider(
                      width: 5,
                    ),
                    Obx(
                      () => FinancingTabItem(
                        text: FinancingStatusHelpers.SURVEYING,
                        isSelected: controller.status.value == FinancingStatusHelpers.SURVEYING,
                        onTap: () {
                          controller.status.value = FinancingStatusHelpers.SURVEYING;
                          controller.getFinancingsByStatus(status: FinancingStatusHelpers.SURVEYING);
                        },
                      ),
                    ),
                    const VerticalDivider(
                      width: 5,
                    ),
                    Obx(
                      () => FinancingTabItem(
                        text: FinancingStatusHelpers.APPROVAL,
                        isSelected: controller.status.value == FinancingStatusHelpers.APPROVAL,
                        onTap: () {
                          controller.status.value = FinancingStatusHelpers.APPROVAL;
                          controller.getFinancingsByStatus(status: FinancingStatusHelpers.APPROVAL);
                        },
                      ),
                    ),
                    const VerticalDivider(
                      width: 5,
                    ),
                    Obx(
                      () => FinancingTabItem(
                        text: FinancingStatusHelpers.PURCHASING_ORDER,
                        isSelected: controller.status.value == FinancingStatusHelpers.PURCHASING_ORDER,
                        onTap: () {
                          controller.status.value = FinancingStatusHelpers.PURCHASING_ORDER;
                          controller.getFinancingsByStatus(status: FinancingStatusHelpers.PURCHASING_ORDER);
                        },
                      ),
                    ),
                    const VerticalDivider(
                      width: 5,
                    ),
                    Obx(
                      () => FinancingTabItem(
                        text: FinancingStatusHelpers.REJECTED,
                        isSelected: controller.status.value == FinancingStatusHelpers.REJECTED,
                        onTap: () {
                          controller.status.value = FinancingStatusHelpers.REJECTED;
                          controller.getFinancingsByStatus(status: FinancingStatusHelpers.REJECTED);
                        },
                      ),
                    ),
                    const VerticalDivider(
                      width: 5,
                    ),
                    Obx(
                      () => FinancingTabItem(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        text: FinancingStatusHelpers.UNIT_NOT_AVAILABLE,
                        isSelected: controller.status.value == FinancingStatusHelpers.UNIT_NOT_AVAILABLE,
                        onTap: () {
                          controller.status.value = FinancingStatusHelpers.UNIT_NOT_AVAILABLE;
                          controller.getFinancingsByStatus(status: FinancingStatusHelpers.UNIT_NOT_AVAILABLE);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            kDivider,
            const SizedBox(height: 10),
            Obx(
              () => ListView.separated(
                shrinkWrap: true,
                itemCount: controller.listFinancing.length,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
                itemBuilder: (context, index) {
                  final data = controller.listFinancing[index];
                  return GestureDetector(
                    onTap: () {
                      controller.toDeatilFinancing(data.uuid);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kInactiveColor,
                        ),
                        borderRadius: kDefaultBorderRadius,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              // color: kPrimaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: CachedNetworkImage(
                              imageUrl: 'https://cdn.idntimes.com/content-images/post/20210623/1280px-suzuki-logo-2svg-618bfa5b29cfbdff54b843503f462364.png',
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  DefText('${data.model} ${data.manufactureYear}').semilarge,
                                  const SizedBox(width: 10),
                                  DefText(
                                    data.licensePlate,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                  ).normal,
                                ],
                              ),
                              DefText(data.seller.sellerName, color: kInactiveColor).normal,
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              child: DefText('Tap to load more', color: kPrimaryColor).normal,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
