import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lead_management_app/app/components/default_button.dart';
import 'package:lead_management_app/app/components/default_text.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:lead_management_app/app/modules/dashboard/components/dashboard_item.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashboardView'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Padding(
        padding: kDefaultScaffoldPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              DefText('Welcome back, Muammar').large,
              const SizedBox(height: 2),
              DefText('Your leads summary and activity.', color: kInactiveColor).normal,
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
              kDivider,
              //* item hijau
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DashboardItem(
                    title: 'Listing',
                    desc: 'Customer service',
                    number: 2420,
                  ),
                  kDivider,
                  DashboardItem(
                    title: 'Inspecting',
                    desc: 'Marketing officer',
                    number: 1210,
                  ),
                  kDivider,
                  DashboardItem(
                    title: 'Visited',
                    desc: 'Marketing officer',
                    number: 20,
                  ),
                  kDivider,
                  DashboardItem(
                    title: 'Assigning surveyor',
                    desc: 'Marketing officer',
                    number: 2420,
                  ),
                  kDivider,
                  DashboardItem(
                    title: 'Surveying',
                    desc: 'Credit officer',
                    number: 1210,
                  ),
                  kDivider,
                  DashboardItem(
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
                  ),
                  kDivider,
                  DashboardItem(
                    title: 'Rejected',
                    desc: 'Marketing officer',
                    number: 1210,
                  ),
                  kDivider,
                  DashboardItem(
                    title: 'Unit not available',
                    desc: 'Marketing officer',
                    number: 20,
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
