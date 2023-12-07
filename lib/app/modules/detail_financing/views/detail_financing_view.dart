import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:get/get.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';

import '../../../components/default_text.dart';
import '../../../config/constants.dart';
import '../controllers/detail_financing_controller.dart';

class DetailFinancingView extends GetView<DetailFinancingController> {
  const DetailFinancingView({Key? key}) : super(key: key);
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
        title: DefText('Financing', color: kPrimaryColor).normal,
      ),
      body: SingleChildScrollView(
        // padding: kDefaultScaffoldPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: kDefaultScaffoldPadding,
              child: DefText('Mitsubishi Colt 2017').large,
            ),
            const SizedBox(height: 5),
            Padding(
              padding: kDefaultScaffoldPadding,
              child: DefText('#321881', color: kInactiveColor).normal,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: kDefaultScaffoldPadding,
              child: FormBuilderDropdown(
                name: 'type',
                initialValue: 'Listing',
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.flag_outlined,
                      color: kInactiveColor,
                    ),
                    contentPadding: EdgeInsets.only(left: 20, right: 20)),
                icon: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                ),
                // isDense: true,

                items: [
                  DropdownMenuItem(
                    value: 'Listing',
                    child: Row(
                      children: [
                        DefText('Listing').normal,
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Inspecting',
                    child: Row(
                      children: [
                        DefText('Inspecting').normal,
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'not_available',
                    child: DefText('Unit not available').normal,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: kDefaultScaffoldPadding,
              child: kDivider,
            ),
            const SizedBox(height: 10),
            Container(
              color: kBgWhite,
              // color: Colors.amber,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DefText('Specification', color: kPrimaryColor).normal,
                  const Icon(
                    Icons.more_vert_outlined,
                    color: kInactiveColor,
                  ),
                ],
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                color: kInactiveColor2,
                title: 'Registration number',
                data: controller.data.value.licensePlate,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                title: 'Condition',
                data: controller.data.value.condition,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                color: kInactiveColor2,
                title: 'Brand',
                data: controller.data.value.brand,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                title: 'Model',
                data: controller.data.value.model,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                color: kInactiveColor2,
                title: 'Variant',
                data: controller.data.value.variant,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                title: 'Manufacture year',
                data: '${controller.data.value.manufactureYear}',
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                color: kInactiveColor2,
                title: 'Mileage',
                data: controller.data.value.mileAge,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                title: 'Fuel type',
                data: controller.data.value.fuelType,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                color: kInactiveColor2,
                title: 'Transmission',
                data: controller.data.value.transmission,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                title: 'Exterior color',
                data: controller.data.value.exteriorColor,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                color: kInactiveColor2,
                title: 'Price',
                data: 'Rp ${currencyFormat(controller.data.value.price)}',
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: kDefaultScaffoldPadding,
              color: kBgWhite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefText('Notes').normal,
                  const SizedBox(height: 10),
                  Obx(
                    () => Container(
                      child: DefText(
                        controller.data.value.notes,
                      ).normal,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            kDivider,
            Padding(
              padding: kDefaultScaffoldPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DefText('Seller & location', color: kPrimaryColor).normal,
                  const Icon(
                    Icons.more_vert_outlined,
                    color: kInactiveColor,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Obx(
              () => DetailFinancingItem(
                color: kInactiveColor2,
                title: 'Seller name',
                data: controller.data.value.seller.sellerName,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                title: 'Mobile number',
                data: controller.data.value.seller.phoneNumber,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                color: kInactiveColor2,
                title: 'Province',
                data: controller.data.value.province.name,
              ),
            ),
            Obx(
              () => DetailFinancingItem(
                title: 'District',
                data: controller.data.value.district.name,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: kDefaultScaffoldPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefText('Full address').normal,
                  const SizedBox(height: 10),
                  Obx(
                    () => Container(
                      child: DefText(
                        controller.data.value.seller.address.fullAddress,
                        color: kInactiveColor,
                      ).normal,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class DetailFinancingItem extends StatelessWidget {
  const DetailFinancingItem({
    super.key,
    required this.title,
    required this.data,
    this.color = kBgWhite,
  });
  final String title;
  final String data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: DefText(title, maxLine: 1).normal,
          ),
          const SizedBox(width: 10),
          DefText(data, color: kInactiveColor).normal,
        ],
      ),
    );
  }
}
