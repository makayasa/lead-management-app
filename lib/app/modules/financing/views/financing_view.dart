import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lead_management_app/app/components/default_text.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';

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
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Center(
                      child: DefText('Listing').normal,
                    ),
                    const VerticalDivider(),
                    Center(
                      child: DefText('Inspecting').normal,
                    ),
                    const VerticalDivider(),
                    Center(
                      child: DefText('Visited').normal,
                    ),
                    const VerticalDivider(),
                    Center(
                      child: DefText('Assigning Su').normal,
                    ),
                    const VerticalDivider(),
                    Center(
                      child: DefText('Unit not available').normal,
                    ),
                    const VerticalDivider(),
                    Center(
                      child: DefText('Unit not available').normal,
                    ),
                    const VerticalDivider(),
                    Center(
                      child: DefText('Unit not available').normal,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            kDivider,
            const SizedBox(height: 10),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.DETAIL_FINANCING);
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
                                DefText('Carry 2008').semilarge,
                                const SizedBox(width: 10),
                                DefText(
                                  '#P912UH',
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                ).normal,
                              ],
                            ),
                            DefText('Sumber makmur jaya', color: kInactiveColor).normal,
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
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