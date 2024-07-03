import 'package:flutter/material.dart';

import '../../core/util/palette.dart';

class AppContactInput extends StatefulWidget {
  const AppContactInput({
    super.key,
    required this.formKey,
    required this.validation,
    required this.onSaved,
  });

  final GlobalKey<FormState> formKey;
  final String? Function(String?)? validation;
  final void Function(String?) onSaved;

  @override
  State<AppContactInput> createState() => _AppContactInputState();
}

class _AppContactInputState extends State<AppContactInput> {
  @override
  Widget build(BuildContext context) => _buildBody();

  Widget _buildBody() => Form(
        key: widget.formKey,
        child: TextFormField(
          keyboardType: TextInputType.name,
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
            hintText: 'ФИО',
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
          onSaved: widget.onSaved,
          validator: widget.validation,
        ),
      );
}
