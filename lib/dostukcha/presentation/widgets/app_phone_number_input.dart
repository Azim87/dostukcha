import 'package:flutter/material.dart';

import '../../core/util/utils.dart';

class AppPhoneNumberInput extends StatefulWidget {
  const AppPhoneNumberInput({super.key, required this.formKey, this.validation, required this.onSaved});

  final GlobalKey<FormState> formKey;
  final String? Function(String?)? validation;
  final void Function(String?) onSaved;

  @override
  State<AppPhoneNumberInput> createState() => _AppPhoneNumberInputState();
}

class _AppPhoneNumberInputState extends State<AppPhoneNumberInput> {
  @override
  Widget build(BuildContext context) => _buildBody();

  Widget _buildBody() => Form(
        key: widget.formKey,
        child: TextFormField(
          keyboardType: TextInputType.phone,
          inputFormatters: [codeMaskFormatter],
          decoration: InputDecoration(
            hintText: '+996 ### ### ###',
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
          validator: widget.validation,
          onSaved: widget.onSaved,
        ),
      );
}
