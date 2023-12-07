import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lead_management_app/app/components/default_button.dart';
import 'package:lead_management_app/app/components/default_text.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:lead_management_app/app/controllers/hive_controller.dart';
import 'package:lead_management_app/app/modules/dashboard/components/dashboard_item.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';

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
            onTap: () {
              final hiveC = Get.find<HiveController>();
            },
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
                  DashboardItem(
                    title: 'Listing',
                    desc: 'Customer service',
                    number: 2420,
                    onTap: () {
                      Get.toNamed(
                        Routes.FINANCING,
                      );
                    },
                  ),
                  kDivider,
                  const DashboardItem(
                    title: 'Inspecting',
                    desc: 'Marketing officer',
                    number: 1210,
                  ),
                  kDivider,
                  const DashboardItem(
                    title: 'Visited',
                    desc: 'Marketing officer',
                    number: 20,
                  ),
                  kDivider,
                  const DashboardItem(
                    title: 'Assigning surveyor',
                    desc: 'Marketing officer',
                    number: 2420,
                  ),
                  kDivider,
                  const DashboardItem(
                    title: 'Surveying',
                    desc: 'Credit officer',
                    number: 1210,
                  ),
                  kDivider,
                  const DashboardItem(
                    title: 'Approval',
                    desc: 'Marketing officer',
                    number: 20,
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DashboardItem(
                    title: 'Purchasing order',
                    desc: 'Marketing officer',
                    number: 2420,
                    isOpen: false,
                  ),
                  kDivider,
                  DashboardItem(
                    title: 'Rejected',
                    desc: 'Marketing officer',
                    number: 1210,
                    isOpen: false,
                  ),
                  kDivider,
                  DashboardItem(
                    title: 'Unit not available',
                    desc: 'Marketing officer',
                    number: 20,
                    isOpen: false,
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
