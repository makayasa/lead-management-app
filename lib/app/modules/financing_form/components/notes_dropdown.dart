import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../components/default_text.dart';
import '../../../config/constants.dart';

class Notes extends StatelessWidget {
  const Notes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Notes').normal,
        DefText(
          'write a short additional informations',
          color: kInactiveColor,
        ).normal,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: kDefaultBorderRadius10,
            border: Border.all(
              color: kInactiveColor,
            ),
          ),
          height: 200,
          child: FormBuilderTextField(
            name: 'notes',
            scrollPadding: EdgeInsets.zero,
            style: kDefaultTextStyle,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: const InputDecoration(
              hintText: 'Note',
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(height: 5),
        DefText('245 characters left', color: kInactiveColor).normal
      ],
    );
  }
}
