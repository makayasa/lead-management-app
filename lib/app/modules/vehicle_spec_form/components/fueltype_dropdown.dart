import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../components/default_text.dart';

class FueltypeDropdown extends StatelessWidget {
  const FueltypeDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefText('Fuel type*').normal,
        FormBuilderDropdown<String>(
          decoration: const InputDecoration(contentPadding: EdgeInsets.only(left: 10, right: 10)),
          name: 'fuel_type',
          items: [
            DropdownMenuItem(
              value: 'Diesel',
              child: DefText('Diesel').normal,
            )
          ],
        ),
      ],
    );
  }
}
