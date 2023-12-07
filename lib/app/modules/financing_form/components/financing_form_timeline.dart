import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../../components/container_dot.dart';
import '../../../components/container_mark.dart';
import '../../../components/default_text.dart';
import '../../../config/constants.dart';

class FinancingFormTimeline extends StatelessWidget {
  const FinancingFormTimeline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Timeline(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        TimelineTile(
          nodeAlign: TimelineNodeAlign.start,
          node: TimelineNode(
            indicator: const ContainerMark(),
            indicatorPosition: 0,
            endConnector: timelineConnector(),
          ),
          contents: Container(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DefText('Registration number', color: kPrimaryColor).semilarge,
                const SizedBox(height: 5),
                DefText('Please insert vehicle registration number.', color: kPrimaryColor).normal,
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        TimelineTile(
          nodeAlign: TimelineNodeAlign.start,
          node: TimelineNode(
            indicatorPosition: 0,
            indicator: const ContainerDot(
                // color: kInactiveColor,
                ),
            startConnector: timelineConnector(),
            endConnector: timelineConnector(color: kInactiveColor),
          ),
          contents: Container(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
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
        ),
      ],
    );
  }
}
