import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lead_management_app/app/components/default_button.dart';
import 'package:lead_management_app/app/components/default_text.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:lead_management_app/app/controllers/hive_controller.dart';
import 'package:lead_management_app/app/modules/dashboard/components/dashboard_item.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';
import 'package:lead_management_app/app/utils/helpers/financing_card_helpers.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        titleSpacing: 0,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: kDivider,
        ),
        title: SizedBox(
          height: 70,
          child: Image.asset(
            'assets/yoda-central.png',
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.menu,
            ),
          ),
          const SizedBox(width: 10),
        ],
        // centerTitle: true,
      ),
      body: Padding(
        padding: kDefaultScaffoldPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 15),
              DefText('Welcome back, Muammar').large,
              const SizedBox(height: 2),
              DefText('Your leads summary and activity.', color: kInactiveColor).normal,
              const SizedBox(height: 10),
              TabBar(
                controller: controller.tabController,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Center(child: DefText('Financing', color: kPrimaryColor).normal),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              DefText('Open').semilarge,
              DefText('Leads in process', color: kInactiveColor).semiSmall,
              const SizedBox(height: 10),
              DefaultButton(
                onTap: () {
                  controller.createVehicle();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.add,
                      color: kBgWhite,
                    ),
                    DefText(
                      'New financial lead',
                      color: kBgWhite,
                      textAlign: TextAlign.center,
                    ).normal,
                  ],
                ),
              ),
              const SizedBox(height: 10),
              kDivider,
              //* item hijau
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => DashboardItem(
                      title: 'Listing',
                      desc: 'Customer service',
                      number: controller.listingCount.value,
                      onTap: () {
                        controller.goToFinancing(
                          FinancingStatusHelpers.LISTING,
                        );
                      },
                    ),
                  ),
                  kDivider,
                  Obx(
                    () => DashboardItem(
                      title: 'Inspecting',
                      desc: 'Marketing officer',
                      number: controller.inspectionCount.value,
                      onTap: () {
                        controller.goToFinancing(
                          FinancingStatusHelpers.INSPECTING,
                        );
                      },
                    ),
                  ),
                  kDivider,
                  Obx(
                    () => DashboardItem(
                      title: 'Visited',
                      desc: 'Marketing officer',
                      number: controller.visitedCount.value,
                      onTap: () {
                        controller.goToFinancing(
                          FinancingStatusHelpers.VISITED,
                        );
                      },
                    ),
                  ),
                  kDivider,
                  Obx(
                    () => DashboardItem(
                      title: 'Assigning surveyor',
                      desc: 'Marketing officer',
                      number: controller.assigningCount.value,
                      onTap: () {
                        controller.goToFinancing(
                          FinancingStatusHelpers.ASSIGNING_SURVEYOR,
                        );
                      },
                    ),
                  ),
                  kDivider,
                  Obx(
                    () => DashboardItem(
                      title: 'Surveying',
                      desc: 'Credit officer',
                      number: controller.surveyingCount.value,
                      onTap: () {
                        controller.goToFinancing(
                          FinancingStatusHelpers.SURVEYING,
                        );
                      },
                    ),
                  ),
                  kDivider,
                  Obx(
                    () => DashboardItem(
                      title: 'Approval',
                      desc: 'Marketing officer',
                      number: controller.approvalCount.value,
                      onTap: () {
                        controller.goToFinancing(
                          FinancingStatusHelpers.APPROVAL,
                        );
                      },
                    ),
                  ),
                ],
              ),
              kDivider,
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefText('Closed').semilarge,
                  DefText('Leads complete', color: kInactiveColor).normal,
                ],
              ),
              const SizedBox(height: 15),
              kDivider,
              //* item biru
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => DashboardItem(
                      title: 'Purchasing order',
                      desc: 'Marketing officer',
                      number: controller.purchasingOrderCount.value,
                      onTap: () {
                        controller.goToFinancing(
                          FinancingStatusHelpers.PURCHASING_ORDER,
                        );
                      },
                      isOpen: false,
                    ),
                  ),
                  kDivider,
                  Obx(
                    () => DashboardItem(
                      title: 'Rejected',
                      desc: 'Marketing officer',
                      number: controller.rejectedCount.value,
                      onTap: () {
                        controller.goToFinancing(
                          FinancingStatusHelpers.REJECTED,
                        );
                      },
                      isOpen: false,
                    ),
                  ),
                  kDivider,
                  Obx(
                    () => DashboardItem(
                      title: 'Unit not available',
                      desc: 'Marketing officer',
                      number: controller.notavailCount.value,
                      onTap: () {
                        controller.goToFinancing(
                          FinancingStatusHelpers.UNIT_NOT_AVAILABLE,
                        );
                      },
                      isOpen: false,
                    ),
                  ),
                  kDivider,
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
