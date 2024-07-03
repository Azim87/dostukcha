import 'package:flutter/material.dart';

import '../../core/util/utils.dart';

class AppDropDownWidget extends StatelessWidget {
  const AppDropDownWidget({super.key, required this.onChanged});

  final Function(ContactRelationType?) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<ContactRelationType>(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white, width: 0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        fillColor: Palette.white,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      items: ContactRelationType.values
          .map(
            (e) => DropdownMenuItem<ContactRelationType>(
              value: e,
              child: Text(e.getContactRelationType()),
            ),
          )
          .toList(),
      isExpanded: true,
      value: ContactRelationType.mother,
      onChanged: onChanged,
    );
  }
}
